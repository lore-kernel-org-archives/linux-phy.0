Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0639AC38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 09:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3x2qAw2GiFe+Jmxi+vWopvUEmYXWYBlGaM9twJ+aCI=; b=cmL4BMvI0zxwYD
	uWs798WH4nvnYVmVKd98QtV8d5J+dqum6yMNSgRcxi4PKvBqQrcSac6CRljqONbM4LL/yHR96quJ8
	Y00RQ2o8DKs7vsB02YusWOfzrcrPoYtg3wnIgLi2L1Y/oxR6eXW5cBEEjoCbTRy36DeeLAMwD29Lx
	Oy0NjntabthoAJmK/ifce+qDYQSxUCJNYonx24mPEOt4ygEXu2QPXg6tJuLjfSw1SpWTdE54gu2Lg
	QVW0/gRFuYwjISVd/9FShwU/awrnqMZzWrgZcgw5JX/JULcZBU2n1NVPJFVPvTkyWJpEmT4gKy5GI
	VewHyN9Fax+FBo59guRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKFaZ-002v4I-4b; Tue, 24 Jan 2023 09:27:35 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKFWf-002tAI-5A
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 09:23:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DA8B0B80F3B;
	Tue, 24 Jan 2023 09:23:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90C93C4339B;
	Tue, 24 Jan 2023 09:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674552209;
	bh=JeQ9yExBJKAbSDiaTpWRXv1OovcRZOo/t6/0Ap7MQeA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KXLTFJ7HSGOIVm0fYvDHvFbEarS6sirwZT507OsUwKXEQ/0YtLgsta5nQvFHdHu7k
	 5mUII5ONW7+o5lxqekIDz5ZNd+4eluqGDu1IiQ4qQrcU/5j9KwmXLmlvu2xAwmxAjR
	 BfZwRO+7Y2qAu8BSumEnlUW8bLxTbvcCNLywTPQUKVQ1e7AhwjCRtZVPTlA5KyydZy
	 OV6KlCPsPuYBiKxgj6mYwaDv/K+66E3RJ5BDBeMH1sEjtJxFAVDmoHGWZoPU6fAz0H
	 BkzprKyrtK6Xf9ltxIJS8/kUSLozAX5jn9271Qs1KZlWCLTWN0QpOslD7jfbqb87xh
	 oUNMGYJAoOC5A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pKFWa-0006tf-RF; Tue, 24 Jan 2023 10:23:29 +0100
Date: Tue, 24 Jan 2023 10:23:28 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
Message-ID: <Y8+jkBOFzhCoVZmS@hovoldconsulting.com>
References: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
 <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
 <CAA8EJppU4nQRYWwAahWtjrVbU1ywF4P+zxHs1PZm98bzKswiZA@mail.gmail.com>
 <Y8+KSV/0Jk9nnntK@hovoldconsulting.com>
 <2fa21add-0198-937c-2de4-05f0f0a102df@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fa21add-0198-937c-2de4-05f0f0a102df@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_012333_380794_E58E3794 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Jan 24, 2023 at 11:19:32AM +0200, Dmitry Baryshkov wrote:

> Let's check with Bjorn. However even if the original offsets are 
> correct, I think we should add dp_txa/dp_txb offsets (and make them 
> equal to txa/txb in sc8280xp case). WDYT?

That is already being done as part of Luca's series:

	https://lore.kernel.org/lkml/20230120-sm6350-usbphy-v4-2-4d700a90ba16@fairphone.com/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
