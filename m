Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89583EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 04:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84jKd2stBBSX4D8Z/MokRTwp1fohQFknoKnwEnwU9e0=; b=lmdYN3nBV8ydyG
	HCS+cUK9FHf2bh/KRJtlFYZg8K10+qN/+kMvf47F8PNMzPyS8STSJlJdRNRszR5LnWnAGHpV9AM91
	RKCAi95Pfw8tfcid3pWBv+4qdntOjV602vln33RJ/z9T8swFDM/zUrWfQ2eo7RKIBQb5ZOfWnjcBJ
	006pj5271TDXGnhmtXGCwNRNDxjR+Cz7mB9QFoEb8shxtKHx4GNw3kjqqKUCrz7vUps1go4nbm42o
	mKHL7A57uwujnSrimW6ZIRgflBzCne7TmFTh3MAHpsZbnrRSW3+hHyU4SEUzYJkZ5F3RzC1fzndvO
	5r9jd6+lMm5Zyu+Xw9TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5Nq-00DgWm-0X;
	Tue, 11 Jul 2023 04:53:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5Nn-00DgVt-1h
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 04:53:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8372B61302;
	Tue, 11 Jul 2023 04:53:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15287C433C7;
	Tue, 11 Jul 2023 04:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689051229;
	bh=ieeYaaJXqI522ZOoNP7U0EdcAYtoYQpnhRw5BD0Lnp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6DbQbUI3PUFPXI5Lq+zRu/lddVBBN/T1n65CS0EDZgYsI/P+KnzzqpQvWIHPs6sA
	 J4lTy6NNB9ostzftA1Fev2Pv8mluN6mLQmDsuHVKi9h8CV0PtEzuOobELtH3HbAm1i
	 FOAEGNx8I+tauId5Skxl65ROtaeNpbqlZeufz36AD1KsjVlIskNwFgmekPHmlxzlgy
	 jNgiLJMcw+W97h6T7XQTpMSQyqiMlC2Y39uJ9V+3/3LCzkbeEoeuwXI0IQjYzMKD2f
	 9iS9Ot7ElDor2gMwnyYR9mRN8SUTmY50I+s1AcrDBVoCkHVzdlrrmVogKChy2CB4Jk
	 2nKkpJSGxPfGQ==
Date: Tue, 11 Jul 2023 10:23:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-snps: Fix kerneldoc warning
Message-ID: <ZKzgWWrtF3aCQNN/@matsya>
References: <20230523115556.3460131-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230523115556.3460131-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_215351_605079_623FD5E3 
X-CRM114-Status: UNSURE (   5.99  )
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

On 23-05-23, 14:55, Dmitry Baryshkov wrote:
> Ad ddocumentation to the update_seq_cfg to fix the kerneldoc warning:

s/ddocumentation/documentation
> 
> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:136: warning: Function parameter or member 'update_seq_cfg' not described in 'qcom_snps_hsphy'

Already applied: 2a881183dc5a ("phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc")
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
