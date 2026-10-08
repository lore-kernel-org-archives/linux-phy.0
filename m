Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 958B0CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 01:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vf/Y5NF8cQCUcDaqWXxuFt8+cyq/crPTLc2rJKuRcJ0=; b=Kr9ttAeMtDtqsJ
	rObCvm7GOXFy5O8w8M0/PdpxElJW2pzPWck41R3h+xyh9vDe+qP7gTwC9tY7Ac835RwbjPvwItjwS
	p8vEb+NYTOyAfG0NNsShcQqb5caVNznha2Ega4+/bx/2Rdsu6Lr3+TdlensfP16krEc3n/IjiIo+o
	rp+5v1IantQuQv/a5KZTdcyJzGalX4q3mfRR2cWg3yxE7r/RTAxoipz0zQwZDVsUsjjXF+aCs1oTg
	K1zltn6mkn0bF6IXzQ3unsOx1emRZdX0BXVKog4cCa6ewgpcsW+hJAa58R+TCFGantO6nRtGkTFRN
	QVwxzpPqrlTf+LwPD5tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHr-00000003NNr-0hf2;
	Thu, 08 Oct 2026 01:51:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHo-00000003NN7-1uKz
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:51:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6981hia5838080
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 01:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1DBGEvXjym/
	vyozn2rSt9qSo/eR5/dW4BeP2EzqjvuA=; b=OB8xtZ7YejfTzMOJh+sDy1+BK/y
	W3KwDIkbGLcvHhrW9kg3FYcTqLip59ZG8ZMBVyIk3+P+VfVuWa86fkh99H4vAUx/
	DVL4tqalcVbthzve5yVeDX4lK4URGrSY+KCRNuVRujosLJghs5RxPzoUrUSICb8g
	SaHDjOEKWhy7TCCS2LnW2Mvgnzse1L9vSGf3NMrsrcHMjIH17fYF1aF5VSdZY0Jr
	MruqiQgq4A7rqbwksmJIxzK4/1c0kaRf7/tjr7DIhXvh3GK2iEnrSWjgx5h8dv8Y
	F1pbLOhJyJswgw9EGLCExAg99NIADZxh9bjf3TS3pj6/fQkuaElwpNNtrgg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe50m8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 01:51:07 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30f1b904861so6198363eec.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 18:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791424267; x=1792029067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1DBGEvXjym/vyozn2rSt9qSo/eR5/dW4BeP2EzqjvuA=;
        b=QSV8cnXLDaVgwWDqj0+qZHuM61RHXi2es5GkRi8uI92LX+FaqBGSYqGSpQDCTnJQWe
         Ikf1qeV1pPZmytYOsfKonc25ATavfcLZ/c8PVzBbvW205cGO0wSjP00ZlDWzf48jYkoh
         arTICil6ZywAdQfczD+Qa8bYmHYFfW81OiILFxPCJ9DP2WTJlsZvmHqQFglFVqhanv2p
         devY420p+2VVLqg9Ss8BCyzeDoxR1JqrNEhQxCyxMvCYKjHq38qV1a5X+6JpnCiF7rGj
         8NFPc7Ypfaze89fwmA/uGLdrvHTr9ffRG4y0loiYGy+mZKW6QeGUMs1oJ6ekmZThiQU1
         vOPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791424267; x=1792029067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1DBGEvXjym/vyozn2rSt9qSo/eR5/dW4BeP2EzqjvuA=;
        b=qs53ZxdqH/r/e34pnKlDiOlIX+zSd5l2FfG1d1T0iNsDBZRuEx9Q/g3DU1TPqvKUwy
         WHUdyxzPHv3RRoUyIVSLBj3PswBc7LVbMFig3kjQDfIYiCMkQbzmZhOIidHPayn7CfvQ
         marfll2pppLhsq9BGiRO9ajSmZdMmqKQz7Ht11OdkdHH7n0euSb3WNq3RnftRVChlzDZ
         tlOznGy5n++EC3P0weZV5qjDLXSmHiV4MY6nvff4NQv3iQDi6hWa/EYVyTTT5ZPW3Bzk
         qTvpiXBKjz6WKZ5ku9udk2e3xj5kPNeUAG5T4mrdWsZ1OKCxKbP7JLpEvDxxlDAEg62I
         UkQg==
X-Forwarded-Encrypted: i=1; AKwUvBzXf51IGSDEtP2kIkDn9U2692ow/JxJmVZMrqspYfrm5+vjiFfqetPJAZtLvhBr5aoxSOAx6EZ6cyc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLe0PgZfsZ9PO23RifPyRIub43hAWhPrsSR/FsM3I641kGoS+8i
	5WBdcjAa9d9hO9/8scrxcW6Wmk40dCpHXBlewa8r0QKSEl+seYl+9KIkFRAgJw6j0eG+fZEP4kI
	wpsUEmdB3WWSoEqAc4WVtZ6TiS9P4AJmPyMpBdDutkk9E82DtP84qJIhchRgTK4T26ryd
X-Gm-Gg: AYBFou1I8BOx8WZsokLHGig0S/O0JJONDdJAbEyUGuHi64QaMKIrce0i5tIdPcHfA6L
	LZEe45Nbn5KvIbh6bibtxmbUqKbOAvVPV+clrwhQ3kakjkm8ZqElzOoE703Ja2pt2yk03jd5GLJ
	D3Y4VjJwGqrnNAuXknCufFQ4WxfwuVmxafQhwzVoLTiZfZCmOB/os3nhaVOWU13Af4G/jmgdjLO
	m1m8V4HdPHgD8KmGgkirP8x7QrZXplD4bQZ0Y6A8Fd4wk0FPHKRXNC3IrjrkNk1x/u9tTBtDmq5
	5xRZZMuxzshoSG4RddiSsqN/MC69wIm4NqSmlUIeYTRaUEkZ4k49kzlArm7K2syWVOk0fcHQsV3
	Rf24B7My2Sf0WVrHbxUtSUinC8c1gxxD6q82i1ZUUnaccUhCpGRQENACuKzM=
X-Received: by 2002:a05:693c:894b:10b0:351:3115:c733 with SMTP id 5a478bee46e88-3515ddaa3abmr4700854eec.22.1791424266644;
        Wed, 07 Oct 2026 18:51:06 -0700 (PDT)
X-Received: by 2002:a05:693c:894b:10b0:351:3115:c733 with SMTP id 5a478bee46e88-3515ddaa3abmr4700816eec.22.1791424265898;
        Wed, 07 Oct 2026 18:51:05 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515abb7117sm11761823eec.3.2026.10.07.18.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 18:51:05 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on Nord
Date: Thu,  8 Oct 2026 09:50:17 +0800
Message-ID: <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Mp2gXdreux6vyajZvf3csO5-dcvVLSW9
X-Authority-Analysis: v=2.4 cv=E4dYNqdl c=1 sm=1 tr=0 ts=6ac6f70b cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=-9G34wqzeZZRMG-dpk0A:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfX5h0ggctlxhy6
 z0DjciZXusp6bEKQ+xQ3i2qHsjRAYuxhpibU5c3F30ORGxsd8p5PmAsSt1E8VyLi1tmG1Dk+dc9
 71l6rYTkxyXplM7snIqdW7Ybiv3BEoE=
X-Proofpoint-GUID: Mp2gXdreux6vyajZvf3csO5-dcvVLSW9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfXyVhzoK0alw7Z
 V37wKPLxWHA4QnAoIQL2zOSeCCQpuZLXJgHLJT2EfSNLDiIZ+1DOCTqZp1MfI5vYgqrsfq57a9K
 OVknbgvrxiYDRJBDHjU9Tyrfq3kB+d7WIX3PQ8Iyxq7moPTQ5EuJFfNwxehHcsDKDoZ50TULWO2
 4pUsMM8Ww8q+LD41R0PV/jD/TBucAPRrz+ezKppRhYpBgPGZADGELDU32NpqW8E9IbVFxuO7VUn
 ml9IbT5UqeMoLmEI0L0mk75IFOMT7QXJvyAsQvJ/xkjBEiiEzMDUXqcoCsJG7tB+AoUBubDJB0X
 BpoaX5RCqQIvqqKE8Y70qSvMvUsEdsE0jAR9BpKbEKIHtqUDZelI6OASyf7qGeP624VaPs9S/eA
 4ILb0JdfU5iQToWdPakeZ6kNS2Ehk23syqL7k+J/HWYEfCsE2JSnnl/QG6MKdAHouCZxR5pNXIV
 ytaae/lgZpGZ8CkZwJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_01,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_185108_522744_1A2DE1F9 
X-CRM114-Status: GOOD (  14.40  )
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

On Nord, the eUSB2 PHY registers sit behind the AHB2PHY_0 bridge, gated
by NE_GCC_AHB2PHY_CLK. The Nord PHY currently matches the sm8550
fallback, which only requests the "ref" clock, so the bridge clock is
never enabled by the PHY. When nothing else holds it, e.g. on boards
where only the USB20-only controller is in use, clk_disable_unused()
gates the bridge and PHY init accesses go nowhere:

  xhci-hcd xhci-hcd.2.auto: can't setup: -110

Add Nord-specific match data that requests both "ref" and "bus" clocks,
reusing the existing Qualcomm init sequence. The bus clock is enabled
and disabled together with the ref clock in phy init/exit.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index af4fa17ac6cb..8429599f428b 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -452,6 +452,16 @@ static const struct snps_eusb2_phy_drvdata sm8550_snps_eusb2_phy = {
 	.num_clks       = ARRAY_SIZE(qcom_eusb2_hsphy_clock_names),
 };
 
+static const char * const nord_eusb2_hsphy_clock_names[] = {
+	"ref", "bus",
+};
+
+static const struct snps_eusb2_phy_drvdata nord_snps_eusb2_phy = {
+	.phy_init	= qcom_snps_eusb2_hsphy_init,
+	.clk_names	= nord_eusb2_hsphy_clock_names,
+	.num_clks	= ARRAY_SIZE(nord_eusb2_hsphy_clock_names),
+};
+
 static int snps_eusb2_hsphy_init(struct phy *p)
 {
 	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
@@ -608,6 +618,9 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 static const struct of_device_id snps_eusb2_hsphy_of_match_table[] = {
 	{
+		.compatible = "qcom,nord-snps-eusb2-phy",
+		.data = &nord_snps_eusb2_phy,
+	}, {
 		.compatible = "qcom,sm8550-snps-eusb2-phy",
 		.data = &sm8550_snps_eusb2_phy,
 	}, {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
