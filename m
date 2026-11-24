Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84E6606A330
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T0CkPG+8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=onxWI2js;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=abbU0oCd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1xRX+m+3vNm2MWRTkDIPLb8mT++9IkmAinRoy3Abyl8=; b=T0CkPG+87iebnyrDz1BrtxzUe4
	rhycaDsVy6l/ptY40bEQV16qldArjpKCZrHOXHSkT5GRAPB+0fyac3iANQzKDgnHOHxtHcJRU2DSR
	oM1FeYBCFF/kfhRbPLpO7uoxg1OTXlfsEB3/afaHUrkoIlawWCZAHmBcUr1lcsiRwPxKa+NfDqJLb
	Yjij+TvJ9gpg6w0Y691lwpphMYbxrADxklmVIDD1wYeaV0E7iT2PhJ4Ss4vNoARiu9jG0KPF7KaxM
	5jpfxmqf6zAOK9ES84BP7QS6vYLkE18rJFRYZuRoGj4/2mTF8L+r/YSBw+nQgkU1eEITeT5dqXZ0u
	5PwBDieg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwi9-00000007gzT-1Wcz;
	Tue, 24 Nov 2026 20:01:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwi4-00000007gxk-3ZOU
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:01:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXoU7365905
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9++EjZZXOS4NJ0u4WUgR+GPL0YP1zFMSphdYQ6zyF40=; b=onxWI2js/qa0c91h
	l/J8lCF49XdAetJqFVrI7XmVpaEGNRwzO2ejLUesHar/CwxBp1Kh+WJTJ3pk+IwM
	QNIOCNFEy4ZV0Q4oDM1xZSAaghIxGoYZky54XgIduzeTXWeLjfg0F5jvi2MMJc0i
	ASDpMpSHAY+/j3aAWgTqMzMsFrH/ka6/FOQqDiICHDf4DAmGUaSFTdTK7TdckGGD
	0wl36+4VHsgOXuelx5nzd653eNdAEvk+RlJfOySyIuO8VUexEEaFJ+lLkjcgRSYA
	2Zuq5HH+mWIJWoGxjfkj6S2hrW51B0opt76jFqxFDj4CkfFHeErjgMGzsqoQy7hZ
	FSZwkA==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j54rhbqgg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:48 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-7d2ca26a454so174380137.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550507; x=1796155307; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9++EjZZXOS4NJ0u4WUgR+GPL0YP1zFMSphdYQ6zyF40=;
        b=abbU0oCdpe/Yfm6aXBfyWCzGgVZmAEMhYLGx4OFFDW+QYSoh7LHLTFWsBJwa1aXI9+
         QDIEYVjrNYx3ifuwPYHLgLTo+tWDcWtcN53adOC5ldmhM2fXX7xFY7C8PyzUsJvTePIF
         CHWXFfeGO4Fx58b6Ui7KojpGTj6vVDwWgy13w8dU1hJlF+jihxANq86ZkwW3ZM33sPwR
         nNs8IMQIVCrh7Stsw7HXCHKmexfvV9MtJSLu9rtWDjX/2M7rmoyn0Q4Fj+rP7cninRhV
         zIrZSCjlmd3+fJgbA3OoFWL4aD+87+R/xymJvhjLB1YPTRT2mbn6vk7ZFjXGLPSUvFiC
         fSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550507; x=1796155307;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9++EjZZXOS4NJ0u4WUgR+GPL0YP1zFMSphdYQ6zyF40=;
        b=2m62Fv+N5h4UU+AXCoA38prTfbrnwSwzxG97IdLKFgAEzhWJ3RXMpgKXt2kWx5ZeIj
         rbPskoNpcAzQgOxFLxSxpwYAPTzSHrY40DYHbB+orEp8NC96GV2A87oeYw7vAp7Fbo/I
         sjWhffjRa78TiAxKnowjhU6QJSJtqMJ1+fj+flsaKyKkhXQLNOXyE0z2BkXQEANby2ri
         TnrJojPgWTjwxGGII/jdvAlUqMVzVSGF74hvwDibMnNjqFdi6FQYPn+lWA/Ah5InoRkT
         LOwMkrffgpQhL1XK+4j0nouXs5vih3WrFQzf0vbSvJins18e1Ohm7MswDrZhd1ofbuiO
         lN8Q==
X-Forwarded-Encrypted: i=1; AL+hErH9YuE3s7NjNU7+pFcDMlwS0syXnBSfp/m07etO6Yfgv3QniY/ULn4IkiBEEBOR2/Zu2A/fz45mqok=@lists.infradead.org
X-Gm-Message-State: APuU4Z9AYVd2qOF4PqoMCu+pQJb32PaIg8MhO2mvtqjzz82qOqNozw44
	fgRYOBL/4d8jMjMJ4x49RatY4yr0l0HmPSeG3Zizc1D2L7+QBbnntiKpgk4MSDK60CprFyjeyz2
	Qfg6+LVIuybfvzrPyVTMgcUv2tq9mmN9VZ76F3Rk1CB5Nk4BvEXg5yjQc2ykr+05UsLg/
X-Gm-Gg: AZFdTZcAwQ5Mn1N3uzT9Z0VlfiLCXUMDL5ljQD/dpeEySss8pkPKL7bmBZeBjyrnc99
	lw0rMgxmY9fjhRipguspnct11Wm6vA/gQpcZeFTmreSUq5Ovn/7MOOxcMJhUuE5oMUj2wMXNZUq
	c3qAlMrqu0aBVRZDjl1Y5jdwxYPSYR/velaVknp31cxfPBOBRiJGrM0PqmrqDsPQILOUlBPZYYn
	oICpPzEzwWN+MROqsz4EdPVXGuofMMmRT2z1Jmid3gsgA8AH9KfUk3xZ6YXSSNNR0lhW+37+Nvr
	/VQNw86/iHsSAwcBCn/H2EJcz4nwPXr8YSpyT8jWa0bEpJP/EgzwTpYRgDDelpKgpNzvxtXduhC
	Bv4I7ozVNOAkiXyzMBd+RNzcvH0FZxp5uHP95KyEfJGjmf3fuVPaWeW6OwN4kbexQ12lRfw8oBE
	eByG8eco8=
X-Received: by 2002:a05:6122:2b1:b0:5d2:d60c:6c48 with SMTP id 71dfb90a1353d-5ee8ad0ec78mr9654715e0c.0.1795550507135;
        Tue, 24 Nov 2026 12:01:47 -0800 (PST)
X-Received: by 2002:a05:6122:2b1:b0:5d2:d60c:6c48 with SMTP id 71dfb90a1353d-5ee8ad0ec78mr9654601e0c.0.1795550506454;
        Tue, 24 Nov 2026 12:01:46 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:45 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:31 +0100
Subject: [PATCH RFC DNM 02/15] phy: qualcomm: qmp-combo: Add USB4
 power_on/off to de/assert USB4 clamps
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-2-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=1739;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=srDcbvCKmzTW6ZFC7dL4jM5RmKmDLk6L/F70k459R2U=;
 b=DfUOTBjSbX0G43dLFvbwRwSUp1QIURcaf26xg7MQFnmkwZFDhPAYrQBYi9bxMtPyd5DhHL2vt
 v/BQpOYKbSMBQSXZAZARt6EWTVGTYwoL/LONH9icnOTkbQiOeETL874
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Authority-Analysis: v=2.4 cv=BKkmP1QG c=1 sm=1 tr=0 ts=6b05ed2c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=1SUI9jfhOX1tsDrs7xYA:9 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXztG8ugvc1eqY
 pJWWYdsQF4E7FtOSkakb/KN4j+llmhpnizVHD8OagN9/MYCknDTKliLhpHr+ecgqSqhmjYBsg9q
 +kOYMWCdkB152KeBovuNLg2hKvYGgMM=
X-Proofpoint-GUID: KTWNMqWuW2C0kM8IBSOwMO6S3MxctWxL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX+2EKVL9dXG+s
 6Z0c4G5dPDcs88yNr6H3QsrHyRTQBzU077FKLboJeLY6GgntxM8zWYjXtMZjOJsQ9+uv+V+KV1X
 Clc6K4kAqXvAAN+WJCIhkEmML1AFFrdlp/4qBlzXleeMZh1SsupR+gr2/txDLbv7r67c3fp5QW2
 o0nOuWLpax/ZiDAOPDvW7PEMXMPxKM8rfWsZ2X209ekF8voPysU6fnfosl5CWqgIRdXw08cA1Tn
 MP9eHt/eH53K2yeH9k+T6pN3SRdjrHc4hsoKLTeBrxVQQ2OjO0/4+z08o2u1d1K8FF9kb6DXmcF
 LnbGaQ7cr4jNr1u2FR9unf6F0lyCPcrfwZ71b3T5+TcqMAhnGiMqEBilreuAMiJtXamOtN4eu4N
 8VnD4nhyaQQnseQ2TxfOc61LTrKDrSExxBE79WQrEqWvZS3cZRVQCb3oIWP3aoZWOllStq28456
 vje9LtKwLXWjRW+vJ6Q==
X-Proofpoint-ORIG-GUID: KTWNMqWuW2C0kM8IBSOwMO6S3MxctWxL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120148_916317_6B02F25C 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The USB4 part of the PHY comes with its own clamps, which need to be
asserted during suspend. Use phy_power_on/off to let the router driver
do that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 03fe66dae8b86837fddcc59956529ae374c1f6de..475b9a43baeeeaf18efb6e55d8151c170169c742 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -5085,6 +5085,28 @@ static int qmp_combo_usb4_exit(struct phy *phy)
 	return 0;
 }
 
+static int qmp_combo_usb4_power_on(struct phy *phy)
+{
+	struct qmp_combo *qmp = phy_get_drvdata(phy);
+
+	guard(mutex)(&qmp->phy_mutex);
+
+	qphy_setbits(qmp->pcs_aon, qmp->cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
+
+	return 0;
+}
+
+static int qmp_combo_usb4_power_off(struct phy *phy)
+{
+	struct qmp_combo *qmp = phy_get_drvdata(phy);
+
+	guard(mutex)(&qmp->phy_mutex);
+
+	qphy_clrbits(qmp->pcs_aon, qmp->cfg->regs[QPHY_PCS_USB4_CLAMP_ENABLE], CLAMP_EN);
+
+	return 0;
+}
+
 static int qmp_combo_usb4_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
@@ -5110,6 +5132,8 @@ static const struct phy_ops qmp_combo_usb_phy_ops = {
 static const struct phy_ops qmp_combo_usb4_phy_ops = {
 	.init		= qmp_combo_usb4_init,
 	.exit		= qmp_combo_usb4_exit,
+	.power_on	= qmp_combo_usb4_power_on,
+	.power_off	= qmp_combo_usb4_power_off,
 	.set_mode	= qmp_combo_usb4_set_mode,
 	.owner		= THIS_MODULE,
 };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
