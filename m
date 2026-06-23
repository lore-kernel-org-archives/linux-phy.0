Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECA1DCD4F26
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 09:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRZ+OaEWBgblzGmXoVjtqkOUMpuHERvo+/s4sVxwlbY=; b=X/DevxZL/9ibdm
	+YPCYHCSBuNFKtyuskr0FZdoPelSBKrTYTVpNZc1zSMmySStoqUU9QPBsljBXUnrjlQowlq/iMmM6
	siNM2T6wyLC7NZar0z81OeOAZyztiT69DATIIuAnEty5JW1SfT1DsitX9Ca81JdaJ+xOFAVfmTvil
	paBtFxyu6KhoprOsR6INTId83nU0UBoozhtDEOpVu6KZXV6oTgNHWyodLv4e4mPrlCBk2pfzgUS4z
	0WB2CqMObpcxB5IlSiaLnvO6n2RjegnPz2j9BpI/cn47luuqA/CZYaWIoar8YSPYKq8PjdsumZ3vm
	mAaaCr6FOp952en5ueZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbx9r-00000005ypr-28iR;
	Tue, 23 Jun 2026 09:11:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbx9l-00000005yod-1qKx
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 09:11:02 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65N6cWjW3338322
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 09:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EN23gSHJavFg0nQoFxdRyLB3tJifXtU1vjwZh72CHAE=; b=FRilvu5VPvd/6clU
	Te6chqPdBWxlrqe65mvVhPdK7ry3BnfQwVxklEcmA42PhnfQqcZOHWwR4Ktl0M/g
	cWGfOcioO9+hZNFszBSGCXXcrBwrzTnYjveI1ix/flyMnzojDrY6r2Tr0FLJXedx
	6ZIqKBATO+CQNQs6ueCFk1JRcyQWJ5nEQo1REayYHS50iSUVabAuX4Vyi3SyRAK0
	Jl1MTC5j2PSB+oNUei5cUkhlAbQnnA4TgylKwvslavmUp+xJ+dzrArM9ANMSN7Y9
	5kcjVdNtYQCA8cantKsgdIseyleyZjqnev2oqyu5DJ224M/Z831Eczr+TpMNw6of
	kx80uA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eygkjhfrq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 09:10:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51a15cef334so6031931cf.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 02:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782205856; x=1782810656; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EN23gSHJavFg0nQoFxdRyLB3tJifXtU1vjwZh72CHAE=;
        b=HanD4IeFo73eeVI4juQpW+whFXnUIEmBPD8m7/ShTmwraf2eLIo5VaDnARySPh0OLq
         d/p+6mgBjr3W95yA2Ff5icZUciNwylcHHO+8wz64hCDK6V92g0wrJYE+zdCbVZdVFNTE
         GvfyxQlpGRRxfkEPfZRVKNqqDNn1JjsWrN2VJ2Ihq5KvE+9aDA9iJh6AEl0aRbc0RUl4
         3WLcuGrut7g+mqKTcmT5MawrNXZAGJ6DdrHW+WDh4gBh9bYqtAxzboj0IK5c34cdgr0I
         Mz/3E1g4jldfdqF8ZG1KkNJOWQdbOxVDi0fuOJClczF8ocYI0dMyDq7CAtCctc83LqlT
         oDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782205856; x=1782810656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EN23gSHJavFg0nQoFxdRyLB3tJifXtU1vjwZh72CHAE=;
        b=BYv2m0PetfMov2aFq7L6h3yWaUnVmPW4j0uTduTGlREDm7QzdQ8TeFHD8PC8yU6z2v
         sBpO8BNYqbvxH6wk3ajFUo4DBLyPBvaEowSW52ddme5I7GWWX3ycacS0YiqZDGmDjiCR
         BcwyKb9GqelsAlbr7YOHuZzPxKucyZXpYf3oWhCv5Hc6ZNETG3aUU8sQKBS6FQ5LLED7
         cilcTOwS/+uh8fe+1wWErtNq7iO7YMQ8cYXC6OsDhMq0VrzmWsL18MtpML+Hy5I0MgWB
         0j6J5g0jyjOLLdWnq7lmc3jyoqQ1Ebh3QUC9O5fFj6BNZGKmR2kNUxOScZMG4MXMvrgg
         GK6w==
X-Forwarded-Encrypted: i=1; AFNElJ+sGxO6+PqRXGftWnIhpRpa8lL3NAoqTcI67SzcBFspHcrmUXP6oURuxW0NXByHjiJhsY6B/enf3qQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyvha7eRRxN2T9b3PUa/A5eMp0JiVJd7HDYK82vNG+qT8jxgveo
	+9N3S4OhcIMHD1u7+/JSDNb0H1xj8XH7E0eba1B3Y+2Pedq9qv1OjBsbZxvRuEm7B/ihE8u+VUv
	WLbWgPciOiYyoNsrfobkGjIo7WbO35sTYZiDt6Nyw0ZQE5AgRyybL09S4CUbv+RRM70ph
X-Gm-Gg: AfdE7cnscO1uPlCcU0CRc4BztgQXb8K/RMGbWns85iAsNetO6RsEQi3rCkwHDqxuogi
	nGelfg3B6gQaYgINecM/P01/ED4+h9e7jejuRzKTPTUPP5v9AYeQVf0/JE/tPGOYFxD+fyRHLl9
	+US+WJ4TGY2sJ6sSAiuTvs8OKF323TFubXR/MquoxGWuB1CbH60RiotC3+3bbUtDZKX5UM1cYqW
	87RT2nG8dFP7S80aI4qHEzyY4NadBHQ9wUFyuPXEcOtewm3vRoOSuUQh+0elMv0nPmeaR1v+/5H
	v3uzw5Ic8BStjPnEtDJSx1xOIPo9qqtqESh2YuvMQ3cdS3Eiw502bXQXbwsSMYR1jqv3Hqg7R1Z
	oaguLRyAJA2hj8iC9cNpTI+8lESbNQySbjmA=
X-Received: by 2002:a05:620a:4693:b0:91c:9d38:30ac with SMTP id af79cd13be357-925c7d073b2mr470751785a.4.1782205855639;
        Tue, 23 Jun 2026 02:10:55 -0700 (PDT)
X-Received: by 2002:a05:620a:4693:b0:91c:9d38:30ac with SMTP id af79cd13be357-925c7d073b2mr470746985a.4.1782205855007;
        Tue, 23 Jun 2026 02:10:55 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6977be31c73sm4510811a12.17.2026.06.23.02.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 02:10:54 -0700 (PDT)
Message-ID: <fc3d0dfc-20cb-4289-a0dd-67ace50d42d8@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 11:10:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: edp: update v8 power-on programming
 sequence
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
 <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA3MyBTYWx0ZWRfX+vdVvtEtrHAw
 sj+f5mBDZfNWmI1L3ZgHukjIdQyCZvhs/4mKB8m7enL7zw3xO4TkkxGgwq+dxmMx1pebxpRg9wU
 OaRow4AqtFHSod4/j1hTcSHQYywis8PWXhCh377e+qCovfzi1/npIwiUT5aJ8bGaPT/+7fkPzUZ
 8HBhMaz8LFd9bSobuEtMV6W9WIBAqAfYrZYp4m9taLmtJDIKlh/eI1orLNPHZWldgHgX9QDX6Ok
 hRWDuQWnZVg5igQLBq6Qm5drbBSiZSRf3si2Zu6fd5Wb7cCQK//VD/Sjb5MObu92VcwCBo718ts
 znRZJd+ST+MnGpdoljiCrEo8j7cRGKM/BET+JoA8BEKoXFYdHKBLY4WP6jzpAgi+V2+AF5Y3WPW
 PoHKRadXbyaGwmmq8pe5ug4TJc+7Kgco+cR10td3nwWrrvApW89JnxO4UQDOZrnozxgjuSy/ngs
 oQLZQgjHtNd72jbJmmA==
X-Proofpoint-GUID: dAWamSKjOfwc_ysAqThL9oe5AKxY-ztQ
X-Authority-Analysis: v=2.4 cv=SoKgLvO0 c=1 sm=1 tr=0 ts=6a3a4da0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=3ehXmQAtHDlHOuXEyOsA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA3MyBTYWx0ZWRfXxVG63vD1/86s
 uUjAE+HBgt7C1J5iPQkgiXwjYP5jdDpAcQQIzt6aUt8Vhb3L3eOGboA4MaIqcEPa0Mxjt7Jw/bJ
 D6UqBxfVA83ll/GLiGs2kdY8BfPwcsc=
X-Proofpoint-ORIG-GUID: dAWamSKjOfwc_ysAqThL9oe5AKxY-ztQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_021057_609699_41432A26 
X-CRM114-Status: GOOD (  18.20  )
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

On 6/23/26 1:29 AM, Bjorn Andersson wrote:
> While the introduction of the v8 programming sequence brought functional
> eDP support for the 4-lane 8.1Gbps case, it doesn't entirely match the
> documented sequences from the programming guide. Further 5.4Gbps,
> 2.7Gbps and 1.62Gbps, and 2-lane support are both incorrect and
> non-functional.

This largely looks good - I painstakingly compared it to the HPG and got
the following diff, most of which shouldn't matter (ordering of config
writes and duplicates), although there are 1 or 2 things that may actually
matter, please take a look:

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index c5d1fa0ae6cb..6504c52b33b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -385,6 +385,7 @@ static int qcom_edp_phy_init(struct phy *phy)
        if (ret)
                return ret;
 
+       // hpg just powers on all the lanes here already
        writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
               DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
               edp->edp + DP_PHY_PD_CTL);
@@ -393,8 +394,8 @@ static int qcom_edp_phy_init(struct phy *phy)
        if (ret)
                return ret;
 
-       writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
-       msleep(20);
+	// not in HPG
+       // writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
+       // msleep(20);
 
        writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
               DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
@@ -404,8 +405,10 @@ static int qcom_edp_phy_init(struct phy *phy)
        if (!edp->is_edp)
                aux_cfg[8] = 0xb7;
 
+       // HPG only turns this on in mainlink sequence
        writel(0xfc, edp->edp + DP_PHY_MODE);
 
+       // there's probably less registers on older platforms
        for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
                writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
@@ -516,6 +519,11 @@ static int qcom_edp_set_link_rate_aux_cfg2(const struct qcom_edp *edp)
 
 static void qcom_edp_configure_tx_pre_pll_v8_lane(void __iomem *tx, u32 interface_select)
 {
+       // 3 times in total? I would imagine once should be good
+       writel(0x12, tx + TXn_TX_DRV_LVL);
+       writel(0x12, tx + TXn_TX_DRV_LVL);
+       // auxless_cfg1
+
        writel(0x0f, tx + TXn_CLKBUF_ENABLE);
        writel(0x00, tx + TXn_PRE_EMPH);
        writel(0x00, tx + TXn_VMODE_CTRL1);
@@ -533,8 +541,13 @@ static void qcom_edp_configure_tx_pre_pll_v8_lane(void __iomem *tx, u32 interfac
        writel(0x03, tx + TXn_RESET_TSYNC_EN);
        writel(0x04, tx + TXn_TX_BAND);
        writel(0x00, tx + TXn_SLEW_CNTL);
+       // ldo_config - already done in ldo_config_v8()
        writel(0x60, tx + TXn_RES_CODE_LANE_TX);
        writel(0x60, tx + TXn_RES_CODE_LANE_TX1);
+
+       // if tx1 (&& is_edp? unsure)
+       // writel(0x1f, tx + TXn_RES_CODE_LANE_OFFSET_TX0);
+       // writel(0x1f, tx + TXn_RES_CODE_LANE_OFFSET_TX1);
 }
 
 static void qcom_edp_configure_lanes_after_pll_v8(const struct qcom_edp *edp)
@@ -586,7 +599,7 @@ static int qcom_edp_configure_tx_pre_pll_v8_lanes(const struct qcom_edp *edp)
        return 0;
 }
 
-static int qcom_edp_configure_pcs_v8(const struct qcom_edp *edp)
+static int qcom_edp_configure_auxless_v8(const struct qcom_edp *edp)
 {
        const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
        u32 auxless_setup_cyc;
@@ -618,14 +631,18 @@ static int qcom_edp_configure_pcs_v8(const struct qcom_edp *edp)
                return -EINVAL;
        }
 
-       writel(edp->is_edp ? 0x03 : 0x00, edp->edp + DP_PHY_LDO_CFG);
+       // shouldnt be called here
        writel(0x0f, edp->edp + DP_PHY_CFG_1);
-       writel(0x00, edp->edp + DP_PHY_AUXLESS_CFG1);
+
+       // ???
+       // writel(0x00, edp->edp + DP_PHY_AUXLESS_CFG1);
        writel(auxless_setup_cyc, edp->edp + DP_PHY_AUXLESS_SETUP_CYC);
        writel(auxless_silence_cyc, edp->edp + DP_PHY_AUXLESS_SILENCE_CYC);
        writel(0x08, edp->edp + DP_PHY_LFPS_CYC);
        writel(lfps_period, edp->edp + DP_PHY_LFPS_PERIOD);
-       writel(0x2f, edp->edp + DP_PHY_CFG_1);
+
+       // bit(5) is for built-in selftest only
+       writel(0xf, edp->edp + DP_PHY_CFG_1);
 
        return 0;
 }
@@ -1117,15 +1134,33 @@ static int qcom_edp_ldo_config_v6(const struct qcom_edp *edp)
 static int qcom_edp_ldo_config_v8(const struct qcom_edp *edp)
 {
        const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
-       u32 ldo_config;
+       u32 ldo_lane_config = 0x00;
+       u32 ldo_cfg;
 
-       if (edp->is_edp)
-               ldo_config = 0xd0;
-       else
-               ldo_config = 0x00;
+       if (edp->is_edp) {
+               switch (dp_opts->link_rate) {
+               case 8100:
+               case 5400:
+                       ldo_lane_config = 0x91;
+                       break;
+               case 2700:
+               case 1620:
+                       ldo_lane_config = 0x51;
+                       break;
+               default:
+                       WARN_ON(1);
+               }
 
-       writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
-       writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+               ldo_cfg = 0x03;
+       } else {
+               ldo_lane_config = 0x00;
+               ldo_cfg = 0x00;
+       }
+
+       writel(ldo_lane_config, edp->tx0 + TXn_LDO_CONFIG);
+       writel(dp_opts->lanes > 2 ? ldo_lane_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+
+       writel(ldo_cfg, edp->edp + DP_PHY_LDO_CFG);
 
        return 0;
 }
@@ -1184,6 +1219,8 @@ static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
 
        writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
        writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
+
+       // these should be set later
        writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
        writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
        writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
@@ -1296,28 +1333,41 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
        writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
        writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
        writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
+       // hsclk_sel_1 (duplicate)
+       // (ssc_step_size1_mode0)
+       // (ssc_step_size2_mode0)
+       // cp_ctrl_mode0 (duplicate)
+       // rctrl_mode0 (duplicate)
+       // cctrl_mode0 (duplicate)
+       writel(coreclk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+       writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
+       writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
        writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
        writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
        writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
        writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
-       writel(cmn_config_1, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
        writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
        writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
-       writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
-       writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
-       writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
-
-       writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
-       writel(coreclk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
-       writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
-       writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
-       writel(core_clk_en, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
        writel(vco_tune1_mode0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
        writel(vco_tune2_mode0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
-
+       writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
+       // ssc_en_center
+       // ssc_per1
+       // ssc_per2
+       // clk_enable1 (duplicate)
+       // sysclk_en_sel (duplicate)
+       writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
+       // clk_select (duplicate)
+       writel(core_clk_en, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+       writel(cmn_config_1, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+       // clk_fwd_config_1 (already set in phy_init)
+       writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
        writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
        writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
 
+       // already enabled in phy_init()
+       // writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
        return 0;
 }
 
@@ -1540,11 +1590,7 @@ static int qcom_edp_configure_rate_pcs_v8(const struct qcom_edp *edp,
        if (ret)
                return ret;
 
-       ret = qcom_edp_set_link_rate_aux_cfg2(edp);
-       if (ret)
-               return ret;
-
-       return qcom_edp_configure_pcs_v8(edp);
+       return qcom_edp_set_link_rate_aux_cfg2(edp);
 }
 
 static int qcom_edp_start_pll(const struct qcom_edp *edp)
@@ -1609,6 +1655,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
        if (ret)
                return ret;
 
+       // bias_en_clkbuflr enabled here in mainlink sequence
+
        ret = edp->cfg->ver_ops->com_ldo_config(edp);
        if (ret)
                return ret;
@@ -1616,6 +1664,17 @@ static int qcom_edp_phy_power_on(struct phy *phy)
        writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
        writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 
+       // should be called here
+       // writel(0x0f, edp->edp + DP_PHY_CFG_1);
+
+       ret = qcom_edp_configure_auxless_v8(edp);
+       if (ret)
+               return ret;
+
+       //>com_power_on()
+
+       // cmn_config_1
+
        if (edp->dp_opts.ssc) {
                ret = qcom_edp_configure_ssc(edp);
                if (ret)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
