Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F9AC47089
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFtHyAp4u1G/ABbiTScN8ZXaXbnChbq5kPTTAsNhkyg=; b=tDSD1KdNZul80N
	XTkBr8STnsAA+R5AXTrdtjv4dZulANASE+SQ4os0TFdkRvW6jTptKGWbwOpgcNhkCNDMNI5XuacbF
	Yh8QXdH7JaNok+nk1dQYRV2InN4YEXBAb+lFKbhYIdWJOkwC9KzlaMMxUQ8z2pz/8KU2TVSbreWxU
	1A64SltVRnEPfro1IMmlXpYbVnMQ7TKwOBlwpD4uJE6TZPTjsIFGBvYlVNtY4wFkz+kIudy2vIgb4
	PbOunhhuO4WHq67i7YfY4mJy8nz9X36tElpYtM3xCScJoqZqE8cHqsrW40y7Ifn0UjVksj3p9Q9wZ
	BVnYLZCGK3FVU92wnRrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JNQ-00AxVB-84; Mon, 05 Dec 2022 21:51:52 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JNN-00AxSB-Dj
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:51:50 +0000
Received: by mail-lj1-x233.google.com with SMTP id f16so3452458ljc.8
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AdQPMv6gJPn05Six/YfmIDR/4tup258UDHVnm5qhvZo=;
        b=spC0ecwu248DgOvZ0F1NPg0nncvPkHSxeBDyyPLmMWmsyxxCcbBJUUtuCohCyWPp4v
         FbLbsXO9hTM2UDULDBKClQdMM9lG9kvWLpWNNiebwNeWiurj9s2Tjk2uWGiWJsv12UyF
         d3BbYyomcIfGABVutvq+r6eBx5JIZkkQ0EIXpDfT+yc6Lar4vdVZjxVBEzJoZ5xs5I9q
         b5cKFCouoYFt9Omorbp1HMZ5adK6kvJtgD7k2mR+DNyW4OKZH2zl7FiFPPphhA+Oeb8u
         QZQvCNpdFHYw4ResG7NcwAJOmhbVXG5h7FINskx7VeXD0zmi2OjJNluG3ttfQR0QMLXI
         Sp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AdQPMv6gJPn05Six/YfmIDR/4tup258UDHVnm5qhvZo=;
        b=LDnR6u3WH6PvevV3JhwcUCUpRrHwJ/X6BiwqCupLhui80y6DaUm1LSEXdqxXRzF97B
         so7SJmVjxmYIoeN43HvU6euCPKOraFXCD3OQvhdOnOguHCG695EY7fP+YTaInWWLpOHD
         V1u3428SlylEFHn5+n1UC7qrDk1bzNLz3ehsmHt4Gl5DJB0OxKwcX0sUti+lSZu3Ox0y
         /9Dq/aPbOpynEJxZWhuwtJxfrnxZqiYfKogkWOJ/dQAMpmWBaM2xK4z4NZY33Ns2ASEu
         yRx+nfXlEYdO0YHJIs2TV1GP4I2Zv2+BwE/HOluXGaV/5QFQh4a0ia6onSZ3z+2bAFe1
         9w5w==
X-Gm-Message-State: ANoB5pkRcbAkESs8H71W9SYJmAsmsLxVd0TI7DbGNvVTyJiqjQCuH7M4
	f3wixWYW2ubGLpSR4EROvi71+w==
X-Google-Smtp-Source: AA0mqf4tRdGqPeB+CrgbTj5zAmEYI7RFoWPpMckQKFd5XiSBV3yLWK0KDKhaTunSunUt+yNOLIxFyA==
X-Received: by 2002:a05:651c:313:b0:279:b566:7489 with SMTP id a19-20020a05651c031300b00279b5667489mr9958854ljp.137.1670277106898;
        Mon, 05 Dec 2022 13:51:46 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id v10-20020ac2558a000000b00494a603953dsm2243058lfg.89.2022.12.05.13.51.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:51:46 -0800 (PST)
Date: Tue, 06 Dec 2022 00:51:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_04/23=5D_phy=3A_qcom-qmp-ufs=3A_Add_s?= =?US-ASCII?Q?upport_for_configuring_PHY_in_HS_Series_B_mode?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-5-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-5-manivannan.sadhasivam@linaro.org>
Message-ID: <32201EF1-8169-4940-99E1-31CC0C37C522@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135149_498015_0A4AE1D0 
X-CRM114-Status: GOOD (  12.10  )
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



On 1 December 2022 20:43:09 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>Add separate tables_hs_b instance to allow the PHY driver to configure the
>PHY in HS Series B mode. The individual SoC configs need to supply the
>serdes register setting in tables_hs_b and the UFS driver can request the
>Series B mode by calling phy_set_mode() with mode set to PHY_MODE_UFS_HS_B.
>
>Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 15 +++++++++++++++
> 1 file changed, 15 insertions(+)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 516027e356f0..2d5dd336aeb2 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -547,6 +547,8 @@ struct qmp_phy_cfg {
> 
> 	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
> 	const struct qmp_phy_cfg_tbls tbls;
>+	/* Additional sequence for HS Series B */
>+	const struct qmp_phy_cfg_tbls tbls_hs_b;
> 
> 	/* clock ids to be requested */
> 	const char * const *clk_list;
>@@ -580,6 +582,7 @@ struct qmp_ufs {
> 	struct reset_control *ufs_reset;
> 
> 	struct phy *phy;
>+	u32 mode;
> };
> 
> static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>@@ -841,6 +844,8 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
> static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
> {
> 	qmp_ufs_serdes_init(qmp, &cfg->tbls);
>+	if (qmp->mode == PHY_MODE_UFS_HS_B)
>+		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);

I still think that qmp_ufs_init_registers() is a way to go here , see the pcie driver.

> 	qmp_ufs_lanes_init(qmp, &cfg->tbls);
> 	qmp_ufs_pcs_init(qmp, &cfg->tbls);
> }
>@@ -1011,9 +1016,19 @@ static int qmp_ufs_disable(struct phy *phy)
> 	return qmp_ufs_exit(phy);
> }
> 
>+static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>+{
>+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>+
>+	qmp->mode = mode;
>+
>+	return 0;
>+}
>+
> static const struct phy_ops qcom_qmp_ufs_phy_ops = {
> 	.power_on	= qmp_ufs_enable,
> 	.power_off	= qmp_ufs_disable,
>+	.set_mode	= qmp_ufs_set_mode,
> 	.owner		= THIS_MODULE,
> };
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
