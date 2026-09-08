Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3672EC79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UK0a+k4zMUx7ejJqusOiIk805bQ8bisxNgS5jv+eKA=; b=Gct0TOAxhOPHFD
	oZpgsOsNOLh7u3Xym/Ut5FV7CsLW98zl34GpDvCW8aBNgmURkytz1OJAYik27Be1vYOS7O93VhwBt
	pEvKqZLIzMFnKDHtbDJj4nZr0wU7r6Irq9yfqYJ0RXQUYM1xBKWNayQ7O+ND/4gnQSeI77kck4Nt0
	NwHBVljO/H1H7gFu/KYDf6old4PaNNogcxfRXhZ5BlHBK1PpG+8zk8WkgMRF7Xu+ra+zeTyNIeSvr
	sNCgGqdYaxUxOn9TUC5Pb9kYuf8lVad5OtLuIMwdQ2bbMEQUyu1d2Ef/Zfd2VLrdKVU4AWo1ShQyn
	mQNxh0ml+PgOIgsIhfyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wPc-00000009DoL-3swk;
	Tue, 08 Sep 2026 14:03:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wPb-00000009Dno-3PmC
	for linux-phy@bombadil.infradead.org;
	Tue, 08 Sep 2026 14:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=UdbggFe7q8Lj6kqK3e4CFZXoyrPkPZ+UAv54p+w4GjQ=; b=fK2fUVB+J5TjOXUDUXpx5v+kl8
	Vv/zTixseDKGS1sCPirsScbmVbfLFL5n4IvJ53Q6dcMK45Os20AbZFRVgh56xSiHT2NvZHv4nbstB
	A7qkYgI5iltBhDcmYWB7z4g1VXbEkGXVTCCenjij3tjGOU6+XrLLuMAJZt/A4CTV7X6BG2D5rsQz9
	3Dip9csEfjkD0q+ONrEX9Kwc2VM0G9ccR+LVXcy7b/xbPXSFBx6Y87SURLexNmrAJZEVaFNE5jHW8
	ujkxIHp/mQ544fEkPEl9khfFUh1gK7R4AnrpeK1md4MfEG9JVqnfstz430L5NcsS3eHALkYT7f9ah
	/iHN+aPA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3wPY-0000000HVah-3zqn
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:02:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688CktQo3013156
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:02:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UdbggFe7q8Lj6kqK3e4CFZXoyrPkPZ+UAv54p+w4GjQ=; b=H9k6jSpHaPW/1kui
	S0DmfVkFo3ezbjZ4bhH0lLJMx9zf2ATgBVta8JtSt4TA/Z5RMLtalfhVoH+Snoux
	r/L4Z/4Hq+pa14PbiKC5hTy2+Jn0a1VrBL2x8SEZHidsI4buUAIdz3Oa4Ol+CNxv
	zUKv5dvZUR1FJ1eGNYDcgkq+8KnyV8KDF7Taw0Un0huQSCSrajQsRhGClD8ODSyb
	fO0pEtVU4w2IBC8Rx0WyrVN1BXjmuNjW/xKOuiy2Aom1Q/qzt07Pbsjasuvg1V8R
	g84FOYuQ9cyGxeTMKaaoeafLOequzZ5Ud/qxZ+3FWXgD3lPOdB+4nsFfSCVE/gSP
	8GHWqg==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gj1rwku2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:02:51 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4ab4dd46ddeso2645337b6e.3
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876171; x=1789480971; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UdbggFe7q8Lj6kqK3e4CFZXoyrPkPZ+UAv54p+w4GjQ=;
        b=E5dVFumw5lDkJXQR9naJC3C4MI80YFCzeV+c7MfW3CY9K+GERxGs/EMjm+aFBMy6Y/
         uFrLd+ShkHaSA1Rm4tnCNPtNVt8evUfvfe7eZ/yGXKLvfDL9qG4W4aHiOG7a7wT0bBN5
         7qZgZYfkn83QIrxR2kCyc5KIKleorbeNl1KNwMHztk1mvXkmNnr/1YMMk1eJE9VsTfyQ
         WTC8b+LZxcWfSJCY1EVvw2szwA111Bkda4HSax4pGViCMNgfRRyFaFvdgS1oDeBmyFM+
         9evcWQr+9P7HGyXSY8ALD6UfcuHop7a3Go4UEfG/Fud9cT67+ObB5ywdTlUz1odLi2h+
         fPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876171; x=1789480971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UdbggFe7q8Lj6kqK3e4CFZXoyrPkPZ+UAv54p+w4GjQ=;
        b=T5Uu6aO7s7aqHYPePhiwQRPwez3vJJKs5wPmAEfpVIuPrbNED6aWIhbqXUktOB/83x
         ZmF7fOOimXfkxfCSo7Puv9gKX9KTPDvL8QWnTPSHU9flhKOMlSOhGggpAAsq9VzweKtM
         h0mWVSpNYziQk5qotNAa2ABRKQRtDpuJP1+w5iPvFkfXoqMlHai4AVHGZKtH/blvYrkQ
         jojvv7dSChdpQ22c5FjyJN99BguLA73nYyPsHBz9BIIjos0Vk7J+LpK1norLEPOsoHdA
         AgG2PBKqm+PvKSWc9B6JwrAgxzFW7Dt5ZUp13Lo+C9gyOIhdqRGkS90MHFd2yHTEkeV8
         srGA==
X-Forwarded-Encrypted: i=1; AKwUvBw+h6FQTZnx0Q4hcbf9MSjj9gq7OtO6HJxuJSUgjyCxLLgpRd9mnx32s+kbSx6xSyGFq7neLsmVQL8=@lists.infradead.org
X-Gm-Message-State: AFuF++mmNTwOYRWTNZ3nYzWnsSoAJdvpRFby0IiewLh4YneG5ZfVyHsg
	/yOUyN0R0cI0LH1Q+xsmWZIdXR1lxkOMGQND9THS7U/X+h3hdQ8P3esSMnf3ifGcpNR+tvzXptn
	we5Dugx0e2CxbKg/NLVaRVUKa0bvK5trrDZgpgB60mmHO1H/M739LbfaiNUefxP4nmF/y
X-Gm-Gg: AYBFou1SD87I6lZVF8QY66y9u3bAOJWKN6xxNyhHCqcOd+SCkr50FwKMJyyoZAqR2Lo
	DUiTFnF/aUwXh1Rv5ELtn4JMwsNv50y4XPb4fwafyLB8uyslYQEstPUxe5EArKieJhXaC7VSEQY
	UJ3tZYvOOpgSPTdQg90RfNBtUTDKd+eaFOzn+oIHQ3uVaIm2DJcXd+FKxuzniV4c0brfLQszb/6
	lG8p9qpbiTYC4YKvNBUq0nYASCyiAi4Yvn5c5tXKH6buN/Jq7UBaWTKd9FDxYD0qg+NGS0ak9up
	NSSc+yjpZqG2vV2pq+RhTlgB3L7rQqkA4tbkPPZrDkEWG3h/FkcFc0DwEylcFsb62JaDNrUlwV9
	l0ie5SB3Ltr7lO8xtQRG4a3Dp7vc=
X-Received: by 2002:a05:6820:1890:b0:6b1:464d:4d1d with SMTP id 006d021491bc7-6b6fb8d25aemr15843806eaf.11.1788876119690;
        Tue, 08 Sep 2026 07:01:59 -0700 (PDT)
X-Received: by 2002:a05:6820:1890:b0:6b1:464d:4d1d with SMTP id 006d021491bc7-6b6fb8d25aemr15841199eaf.11.1788876104004;
        Tue, 08 Sep 2026 07:01:44 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:43 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:31:00 +0530
Subject: [PATCH v4 7/9] phy: qualcomm: qmp-combo: Update
 qmp_v8_configure_dp_clocks() for Glymur
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-7-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=4361;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=6aummGG7uM3gBoUmHGxAZoDx1OzuEAw7M7EaVWO1zCU=;
 b=ftWM0vBvxlKMhxDLJzHKQPIU8XWe9hngAp9Yy50vSeOzT7iIM6l+cM/4KynOpT9tHi9Xeydni
 ltFoLCLrjRuCy+F7LB5nb4ph370lAHcz1ZagnKlNMiy77vds7lTxmuC
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=Ga8nWwXL c=1 sm=1 tr=0 ts=6aa0158b cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=tE633ojKFf1lYKHj1RUA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfXzsd8qGehZhSD
 fvxxqYs93oBYGKFp5/RKgMe52skkXsrlZTIAAOzGMrmkrw69GwaYBUPf8PfwLFB355Rd4DN21uq
 IvquiU3PFeJOfRv6+e0JI1dFbs8jngwCUaNsU31sR9C2bNsyKOJ6Bcbg1Bm++NrJsQDV5ZyvSgz
 mANNqNLzxoe0lUL2CZ5isH6a9OhV7xowc0faf2uH1qTOefdh8d5c1vFcwaCKUFRLRi7cohM5crp
 KnWsum6wJOnVvjesSkSh2W/BGTOVpiSDIJOs0lmrbx06P8SlV13j53+1svPArw7R3B7eA+7qXpc
 J2E9hk2rnTxj/RdrvE/9mJ89x7SkfFTsaRN/BFlT+hhOb+HKd+umUSGAvFQAr7T8heB0MPRm5Fz
 HF3kj9nnYxIaHCuLfmzbF0Slf8Mj5NlxoGXtZ3agHzuv74jjsVW3h1lOn4XMgmQN2OrSfNGBq81
 1ZsOvJWn++3wO28Qs5g==
X-Proofpoint-ORIG-GUID: g_aOX8ZYj4MZfoH_gMe3mYlzyCJ2ppgq
X-Proofpoint-GUID: g_aOX8ZYj4MZfoH_gMe3mYlzyCJ2ppgq
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX11sZbl+Kzkdn
 3UrZBQ5ZTX48Ch9dB8tCZxnmauR2CMtWAJne7Rnhy7SqtE3krXvdGbzKgGbZf3OMnKnwn3Qpoa6
 33ZkZbcESzd3I/k2ZG8mGC9RQZBhJFc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_150257_313105_441E785E 
X-CRM114-Status: GOOD (  15.86  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Remove VCO_DIV programming from qmp_v8_configure_dp_clocks() as it is
not required for the v8 PHY.

Add per-link-rate auxless setup/silence cycle and LFPS period values
instead of using fixed constants:
  RBR (1.62 Gbps): setup=0x03, silence=0x06, lfps_period=0x00
  HBR (2.70 Gbps): setup=0x04, silence=0x08, lfps_period=0x11
  HBR2 (5.40 Gbps): setup=0x09, silence=0x11, lfps_period=0x33
  HBR3 (8.10 Gbps): setup=0x0f, silence=0x1a, lfps_period=0x55

Add per-lane drive level lookup from the ln_drv_lvl tables based on
the maximum voltage swing and pre-emphasis levels across all active
lanes, replacing the hardcoded 0x1f value.

Remove the duplicate LFPS_PERIOD write that was present after the
AUXLESS_CFG1 programming.

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 45 ++++++++++++++++++++++---------
 1 file changed, 32 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 79006469f3d4..a07ad858b0d3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3868,48 +3868,67 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	u32 phy_vco_div;
-	unsigned long pixel_freq;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	unsigned long pixel_freq;
+	u32 auxless_setup, auxless_silence, lfps_period;
+	unsigned int v_level = 0, p_level = 0;
+	u8 ln_drv_lvl;
+	int i;
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (dp_opts->link_rate <= 2700)
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr_rbr)[v_level][p_level];
+	else
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr3_hbr2)[v_level][p_level];
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		phy_vco_div = 0x4;
 		pixel_freq = 1620000000UL / 2;
+		auxless_setup = 0x03;
+		auxless_silence = 0x06;
+		lfps_period = 0x00;
 		break;
 	case 2700:
-		phy_vco_div = 0x2;
 		pixel_freq = 2700000000UL / 2;
+		auxless_setup = 0x04;
+		auxless_silence = 0x08;
+		lfps_period = 0x11;
 		break;
 	case 5400:
-		phy_vco_div = 0x4;
 		pixel_freq = 5400000000UL / 4;
+		auxless_setup = 0x09;
+		auxless_silence = 0x11;
+		lfps_period = 0x33;
 		break;
 	case 8100:
-		phy_vco_div = 0x3;
 		pixel_freq = 8100000000UL / 6;
+		auxless_setup = 0x0f;
+		auxless_silence = 0x1a;
+		lfps_period = 0x55;
 		break;
 	default:
 		/* Other link rates aren't supported */
 		return -EINVAL;
 	}
-	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);
 
 	/* disable core reset tsync */
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 
-	writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
-	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
+	writel(auxless_setup, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
+	writel(auxless_silence, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
 	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
+	writel(lfps_period, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
 
 	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
 	writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
 
 	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
 	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
