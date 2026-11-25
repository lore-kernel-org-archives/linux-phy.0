Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B6B606A31C
	for <linux-phy@archiver.kernel.org>; Sat, 28 Nov 2026 10:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ehHtXQ19;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=w+r1rJX8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=dpt2PIRAZDJp1+CKpTenkBxUJjdqjHYYdJy2G8qftVs=; b=ehHtXQ19ko17/2tyH6yLZzyHkM
	FqKhGni95c9PzNAKToVgj3XzbFWPo3CL1gutN+s/lVg5jebuFipyIEOwX4tVX+FlC6veQQoooDTev
	i6vWgR9VJqS/YgjpmWQnSb0er6GD6RRlYDiDLJbEMIs+OK6qsYQgGJxJufNHUnRWWB7x36nwxJPzd
	RJfrS20HPyS90BYx+PWie0zPr+QH8sV2BVZPF/7jVrOjS6sbwJ3DHSoMlBWkmySeQTfwpe9cDM2oa
	I3Zwmb5IWdNdBlKpzVKYpZSJOXWk3mPUhjLesltJ8L0bz8SrcdFIwpLf72DjO/Yjt16gL3Vfm6MSK
	89+1azxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXFXq-00000000fEu-2fpD;
	Sat, 28 Nov 2026 10:20:38 +0000
Received: from mail-10631.protonmail.ch ([79.135.106.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJZp-0000000BHaD-16aS
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 20:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1795638400; x=1795897600;
	bh=dyItsAdwCo4xMj3bus0BCLCIqJPEYeY2E2MYEhkeGY0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=w+r1rJX8pk6m7kRJ7LnO+M/5aEticPshtEPxzXCH7DoKPTB/igFWWyttAXpehAcyy
	 3gzrXEgb1l4yWHYkMvdSTq+Btv2PsRlwgyq2abwyY52SI0be70pgU0nRwDh7XbQrAf
	 qLvmCjc9Zl9Sk/wv6nQL8g2MGj8128zNWS1rMN23pxV4ZOLavVzN2s2FC4UIyTJ/FH
	 h/7zadZw4alrwMik9AMRrFueJlSase7iaFq2on5bm/4KJUmHWl9kHd0pGxuVHsNO+j
	 jIJJmK9nF9lQE14I9EJgONbrGjdQOKcLT6oMIxKfSaDf34qVSs5ZY4BGbuezpX8+qP
	 6RUBOCYxpsV0w==
Date: Wed, 25 Nov 2026 20:26:34 +0000
To: nabige.aala@oss.qualcomm.com
From: Victor Mora <vjmoralesmora@protonmail.com>
Cc: abhinav.kumar@linux.dev, airlied@gmail.com, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, jesszhan0024@gmail.com, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, lumag@kernel.org, maarten.lankhorst@linux.intel.com, mahadevan.p@oss.qualcomm.com, mani@kernel.org, marijn.suijten@somainline.org, mripard@kernel.org, neil.armstrong@linaro.org, quic_khsieh@quicinc.com, ritesh.kumar@oss.qualcomm.com, robh@kernel.org, robin.clark@oss.qualcomm.com, sean@poorly.run, shengchao.guo@oss.qualcomm.com, simona@ffwll.ch, tzimmermann@suse.de, vkoul@kernel.org
Subject: Re: [PATCH v3 09/11] phy: qcom: edp: Generalize power-on path for per-SoC overrides
Message-ID: <20261125202615.74643-1-vjmoralesmora@protonmail.com>
Feedback-ID: 122405522:user:proton
X-Pm-Message-ID: 29c171b79d6c124dc6a3f80b30588bf4c7651e30
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_122649_468850_F83BAC6D 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-Mailman-Approved-At: Sat, 28 Nov 2026 02:20:37 -0800
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nabige, Ritesh,

On Mon, Nov 16, 2026 at 06:46:48PM +0530, Nabige Aala wrote:
>  static struct qcom_edp_phy_cfg glymur_phy_cfg = {
> @@ -1087,6 +1124,8 @@ static struct qcom_edp_phy_cfg glymur_phy_cfg = {
>       .dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
>       .edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>       .ver_ops = &qcom_edp_phy_ops_v8,
> +     .phy_status_reg = DP_PHY_STATUS,

On my Glymur-based laptop (Lenovo IdeaPad Slim 5 13Q8Y11, X2P-42-100),
the eDP panel only works when the PHY status is read from 0x114
(QSERDES_V8_DP_PHY_STATUS in phy-qcom-qmp-dp-phy-v8.h) instead of
0x0e0. With 0x0e0 the panel stays black.

Could Glymur use 0x114 here? I'm happy to send a follow-up patch on top
of this series if you'd prefer.

This was tested together with a v8 PLL fix I sent separately:
https://lore.kernel.org/r/20261125-glymur-edp-pll-v1-1-068a4d95a12f@protonmail.com

Thanks,
Mora, Victor


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
