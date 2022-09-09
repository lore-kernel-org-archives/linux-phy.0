Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8D0ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wv1dVLDJBhoQvGJHtEWTadWe+1wp8l42lV23Vra4yhI=; b=uG94nHxxdUOx9c
	J2mMKksZ/dqMlMerAZTzkq3gyKF4n9sN4lk1alXMZFDUrfzlRgRXmMGFTebq7+aBsT3E8l3dgh8wl
	qH4jkXIaJUsLoZKnujellHhYzmbMeEEd/jGksMdhAdoEzR3F5JD20Am506X2GMNfaW5r4kHFoffni
	7+0gjOdN+hRu4W2TM1hBHLb6oDmtR3hGGGiZRMnj3+2s+mvMsZgM049iR+IyLuW3SOtlUFSoFGYwt
	QowdphUXDquB8b5ivcsnxbTOWBOPDJZP1qS+5EF7jxJqBb1DDl9Iuo/kwtxPQnTPqQe38gFpjQnBl
	cgw5axoQWnU2DIx0lbVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdxo-00GIfo-Qk; Fri, 09 Sep 2022 13:22:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdxm-00GIev-8n
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:22:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CF61161D0E;
	Fri,  9 Sep 2022 13:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 350D2C433D6;
	Fri,  9 Sep 2022 13:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662729749;
	bh=rJJ1FESy6OScB8OBsKbaugGMcKV7Z8WhZKhscbndiYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RDSdt6zc+1g/A7sfIYRWPlDC5e4rYVyOeaZD3D/4Yk5Qe1y3TjMY09jBxtXemOfsj
	 mDO/9kUq01+i3NhU7i5Euecm/i0GlQvs54e6ZrD5PDjcZNpLhI9qZMCMbaRklNv+WC
	 EDU2CGabAyrj29qcy5ZTDuyq/M+FRJrYNy/UD20Yee+8O7LWTTa6T14jU9GnWHkJ6X
	 5xiZdEIxquovz1io3dLXe5MFsV8Y/Z3R99t31hChVxbVbfZ+qvn0vp3u/5RGuJyOA1
	 7f6t/oeuAEsEysg7yw3BwqNH/6KqPYRYB+W3tSpYcIy7N4WvTy3eEWueDMV+ARU38j
	 2sJZ5Hyuo/TUw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oWdxv-00025M-Bw; Fri, 09 Sep 2022 15:22:39 +0200
Date: Fri, 9 Sep 2022 15:22:39 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/16] phy: qcom-qmp-combo: disable runtime PM on unbind
Message-ID: <Yxs+H8di+GLNRI6w@hovoldconsulting.com>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-2-johan+linaro@kernel.org>
 <167201e9-b9dc-5dca-ac37-b0593974ebc8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167201e9-b9dc-5dca-ac37-b0593974ebc8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062230_373665_18ECC937 
X-CRM114-Status: GOOD (  11.72  )
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

On Fri, Sep 09, 2022 at 12:26:30PM +0300, Dmitry Baryshkov wrote:
> On 07/09/2022 14:07, Johan Hovold wrote:
> > Make sure to disable runtime PM also on driver unbind.
> 
> Nit: technically the subject is misleading: you switched the code to use 
> devres- helpers rather than manually disabling the runtime PM.

I disagree. I'm summarising what the patch is doing, not how I
implemented it.

> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
