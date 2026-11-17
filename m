Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DE2606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 23:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E+FZlTqH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HfOglICI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BE66BawB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=fomI0JJ7POgLJEnIbk8crTkHoO/bmsDHckrKPv988BA=; b=E+FZlTqHeyon4OMLjd75iAN78u
	aT+MA5aXYF7UM2Y6/LBIESUsTwdfN7pTFqV8Dn9dmwQ08Nc92JvqfcPrgWset/OlCT1mnnfNpv9HV
	ln30s5lqlf8lzgCfvozQBQ3ed5gWJahVpu+MNQfw0VeUtYrERjaiz+3xurezTNcnMjQfk19n1xSyP
	urF8X7XYqHitAXQN33hwhsElSgnfvB/B2ERCjecJ3XEpAxVZSJw4BRSR/VLChsNC9S/8q2CvIMGhZ
	/BTImOIglJU9vs6k7D3IvjI8YD5opLBf0CkpknkQqc2Gkt8HUw0/E4iBWkROQPyExpGnzsIYIJ7ZF
	jDl8Uvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSC7-00000007Gkl-1cNO;
	Tue, 17 Nov 2026 23:02:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSC3-00000007GkK-3Pu8
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 23:02:29 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AHMemJe2105087
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 23:02:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FcF6/mMa7sW8TIX+FKOeb1
	YgIUbWY9PFeujmnoH75RA=; b=HfOglICIsRSkSfLgQvZZE3yX8DDd+qn6fy4rgq
	pR554VRFd0J1+WpQJD4MdlXV+itPHw3d8zSN4wbF4fmHLhYwvjpfzCFx/lg8Buzw
	c6RU0nf3JCax7wW0WZrAz1ACiCEQjGKO7cBWgUuMpMIdPdM/4mQkros3xPAdl4On
	BbEkzBiPqHSMRQaTKq1tkOBHop0dgH4xbZa4MVDNObZG70u0ImmYgqEaKCB4WENc
	lHPxb/FZe/s+9w7KW0uFzE6N//zjH+Q7lc42NDGh7/2pocxLulLRTF2LAr5zL4e5
	9JszoM/aV15tIS4W0jQfLBmTIyfThPPTL2wLQ8u4fGDnCq5w==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yv702w1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 23:02:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-36ecd5db581so1013227eec.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 15:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794956546; x=1795561346; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=FcF6/mMa7sW8TIX+FKOeb1YgIUbWY9PFeujmnoH75RA=;
        b=BE66BawBJAOrBYDo8l1eGhgokTft0xRqm0GrknkRvWmxcWpJyB1w0j3NmI4mdJCgIW
         7HijNG0X2UtHWnWsS6SE5a3duEdg3TT6/6ogBEto7UWEgxsfMqlvZCj6nrTddpQOOOgU
         LTaYZhDbXbExSVCnsO8VobLZ2s7+QWRlSGGKY+esnXFeWTw/H6UPpBAorPb3NUC6tU+5
         Hs12YllGjic7RuXyrw58vvVcoulzrjE2mSnh2AQ7QfmaJdWTtop0L4pZ03Uo11yo9M9z
         8u+h77CeITrxbYS9mc1Pfn3wUjDHkbws2VX94MRWq+T2+EyIqypHt3pepDgOXckJjpqZ
         gnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794956546; x=1795561346;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=FcF6/mMa7sW8TIX+FKOeb1YgIUbWY9PFeujmnoH75RA=;
        b=vPwagjVGuDs7pjF7xlABOQgASReHS4prqGkiNmZykCzaqz/1qCcgnbvhZ2iQ0yBdMy
         HknSoQILn1fr22j0jCqytoFrfKT1v2u4a768M9amJrY2koBnQCH8ttjOf2Fp5yafOyAd
         mBwTqY769mE+8EAP/jAoefE09Wga6KIfrK8hqx1jyThkclOVZLn3QVy4NsPzP44U84uo
         CZt+thWdPh+/I67ZL0qYZ2ZB75opJsiKWaNi+bWGjx+vUQ7UPlemoULyFxZuOMEqTmhU
         eea7DKN6yDykMZqok7xYNObxLGjcSXzoZ5gIjY89oenJXqhbXnUNxmF6+RWSWC68K+aK
         CwUw==
X-Forwarded-Encrypted: i=1; AL+hErGf1fhhfLQpReMNzsui+Rv4eTFuSmWzLmpQD0F+j93KUeMsDNagh2WAdE/4r9SQCE8+bk+heoUrTkM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8R9YIV3meUiMswspLRQu1syEFIWxd1o22sC/eLiE37y3Ds6pQy
	Z3LadoNFvCDvBpooLh+BiHBykSHUH/ZZsFbjcnooRVAcn7pqcB2IBWrCiqkP+e620jUQTByk+gW
	AJl1JHbzHKLUuzZraMRsU5bhxDKd/FMHx5fL2/7DIOg8dTG0sSuXYby62uhf8TTVpSIzkTe+wTl
	V/
X-Gm-Gg: AZFdTZfvqKPNFp6NIEiG5hqvAgvwZI8+tyKgqFxt+pRlVcuRAGT8nT+hnKujGxAwCIj
	prfiorfgNqFy9ZD6fY5WqlU/oBsT0YCg0dEkGFSPKYc9VYjzgNeO1+KaWmjH2lJQE1+wkCuWoe7
	bHmWGQxlRQM5y1Y/CNH4X99PNi69K09wJ7vSggb45SVOcdmjHMJWrPCUmBUwzmMVp7y8Xw9wy3b
	VdwyTf2A2SNdBNcNEFmMKJqlXNuxq9AQB9sXTK73kIhEd4IrCHQshDMoYXSxjW+opaLBwFrfpdh
	4kUxKaqe84FWsTXGFgkY2/Tc6BcwgVNtpfmHufEj6eQ5CuloyzY/aK3ymUxwv78dJ7oVlvV5T07
	c/bs3AWVYmsd1t6RbLJo7Nv6nP7Bd3wd0NJtk715Zk5Lm6SB+IMIOn2E1oUZJ/JvTy3ihw5SC/C
	N8Ptch6vtRGU9FwpwBGRQOcpH/lw==
X-Received: by 2002:a05:693c:26c8:b0:36a:1bd4:628a with SMTP id 5a478bee46e88-3827f98f30dmr764280eec.9.1794956545937;
        Tue, 17 Nov 2026 15:02:25 -0800 (PST)
X-Received: by 2002:a05:693c:26c8:b0:36a:1bd4:628a with SMTP id 5a478bee46e88-3827f98f30dmr764065eec.9.1794956542520;
        Tue, 17 Nov 2026 15:02:22 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-382a72eb2f3sm1330120eec.18.2026.11.17.15.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 15:02:22 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 15:02:21 -0800
Subject: [PATCH v2] phy: qualcomm: qmp-combo: Differentiate clocks related
 to the USB block
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261117-qmp_phy_usb_clks_v1-v2-1-6e960853aa69@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPzc/GoC/32NTQqDMBCFryKzbiRGa6ur3qNIMHFa06rRjEpFv
 Huj3RceDz54PysQOoMEebCCw9mQsZ0HcQpA12X3RGYqzyC4SHkWcza0vezrRU6kpG7eJOeIibP
 K4kvCr6kS4Ju9w4f5HKv34sc0qRfqcZ/aE7Wh0brluJ2jPff/wStiVVJprTNUIo1vligcprLRt
 m1Db1Bs2/YFGWwh488AAAA=
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, jason.pettit@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Proofpoint-GUID: if7_qBrhqN-tDl6oDlCi2SkfQ4oJIJSZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDA5MSBTYWx0ZWRfXxk5tlEaFS//a
 OTgOwT0iA6lanGsACcxOlxpzPqjZAqFgo9UNQEOtsvFnOJJjU6KoEUtTaYe5CR8NcIWow/XMXiT
 kYXvD9Gg/iEWYmGmTSrle27jzud8L3ouJ23NSJZKDzrXtIbdzVc61THUmCDXzSuGDSJzrARk34E
 nc1+D0N8fT4LWY6DEBzYVqYRbMOLallAUZmCZn7TkfguWpoSOnuW4PHWw/rpMzZxj25BxkaH8Hb
 4+ZnnJWj13lu2UZnNYsZrK1nVrHi1eZ8KtdvSm080Vaqmt+Uv/igRfI98Q0qs0tuin9ot9Sj4/E
 YhwlIEDPDK9Wrjm5DBi+lFReTpUTMgP6OFtB2FGDpSJVwyrdpBU1n81uRW8XJMbCq0zAajgFkFG
 jwqaob0bRrHFhAFQ21FMlm9tA3ud3305DNubNRWStQHxlIbxis4Q1r6ElQI1WxmhemPj60Jdeef
 gc9iENuwb5Jmxw/T/og==
X-Proofpoint-ORIG-GUID: if7_qBrhqN-tDl6oDlCi2SkfQ4oJIJSZ
X-Authority-Analysis: v=2.4 cv=H8xOUOYi c=1 sm=1 tr=0 ts=6afcdd03 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=zQS2rcLGANSAm0HkUrAA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDA5MSBTYWx0ZWRfX+ZHfh6uCwfk8
 zZLzbmyhJ6HlwUSrOcJt8RTahTMOzJrzItgYhT+dyxv26XviuULg2RRCKuF3PCvoh4MB5iOmITO
 H0WstjXLAAUW7v2OZbh+4PuOq5Q7gdg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_05,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611170091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_150227_869437_90078D0A 
X-CRM114-Status: GOOD (  20.74  )
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

The Qualcomm QMP combo PHY has a USB and Displayport block that is
sourced with different clocks.  In situations where the USB path is not
utilized, and only Displayport is active, unnecessary clocks are enabled
and not used.  Split the current clock list into USB specific clocks,
which will be enabled whenever the USB initialization routine is
executed.

In addition, move autonomous mode control specifically when USB is
active, as its primary purpose is to detect RX detection and LFPS
signals, which occurs only when USB is active.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
Changes in v2:
- Added proper error path cleanup with the introduction of a new set of
  clocks.
- Enable/disable usb_clks accoridngly with the usb4 path.
- Link to v1: https://patch.msgid.link/20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 76 ++++++++++++++++++++++++++-----
 1 file changed, 64 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..bb9eee2f3f0b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2619,8 +2619,10 @@ struct qmp_combo {
 
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
-	struct clk *p2rr2p_pipe_clk;
 	int num_clks;
+	struct clk_bulk_data *usb_clks;
+	int num_usb_clks;
+	struct clk *p2rr2p_pipe_clk;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -2668,7 +2670,11 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp);
 
 /* list of clocks required by phy */
 static const char * const qmp_combo_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "com_aux",
+	"cfg_ahb", "ref",
+};
+
+static const char * const qmp_combo_usb_phy_clk_l[] = {
+	"aux", "com_aux",
 };
 
 /* list of resets */
@@ -4455,13 +4461,20 @@ static int qmp_combo_usb_init(struct phy *phy)
 		return 0;
 	}
 
-	ret = qmp_combo_com_init(qmp, false);
+	ret = clk_bulk_prepare_enable(qmp->num_usb_clks, qmp->usb_clks);
 	if (ret)
 		return ret;
 
+	ret = qmp_combo_com_init(qmp, false);
+	if (ret) {
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+		return ret;
+	}
+
 	ret = qmp_combo_usb_power_on(phy);
 	if (ret) {
 		qmp_combo_com_exit(qmp, false);
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
 		return ret;
 	}
 
@@ -4492,6 +4505,8 @@ static int qmp_combo_usb_exit(struct phy *phy)
 	if (ret)
 		return ret;
 
+	clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+
 	qmp->usb_init_count--;
 
 	return 0;
@@ -4547,6 +4562,10 @@ static int qmp_combo_usb4_init(struct phy *phy)
 		return -EINVAL;
 	}
 
+	ret = clk_bulk_prepare_enable(qmp->num_usb_clks, qmp->usb_clks);
+	if (ret)
+		return ret;
+
 	ret = clk_prepare_enable(qmp->p2rr2p_pipe_clk);
 	if (ret) {
 		dev_err(qmp->dev, "p2rr2p_pipe enable failed: %d\n", ret);
@@ -4606,6 +4625,7 @@ static int qmp_combo_usb4_exit(struct phy *phy)
 	qmp->usb4_init_count--;
 
 	clk_disable_unprepare(qmp->p2rr2p_pipe_clk);
+	clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
 
 	return 0;
 }
@@ -4722,7 +4742,10 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 		return 0;
 	}
 
-	qmp_combo_enable_autonomous_mode(qmp);
+	if (qmp->usb_init_count) {
+		qmp_combo_enable_autonomous_mode(qmp);
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+	}
 
 	clk_disable_unprepare(qmp->pipe_clk);
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
@@ -4749,13 +4772,27 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
 		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
-		clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
-		return ret;
+		goto disable_clks;
 	}
 
-	qmp_combo_disable_autonomous_mode(qmp);
+	if (qmp->usb_init_count) {
+		ret = clk_bulk_prepare_enable(qmp->num_usb_clks, qmp->usb_clks);
+		if (ret) {
+			dev_err(dev, "usb_clks enable failed, err=%d\n", ret);
+			goto disable_pipe_clk;
+		}
+
+		qmp_combo_disable_autonomous_mode(qmp);
+	}
 
 	return 0;
+
+disable_pipe_clk:
+	clk_disable_unprepare(qmp->pipe_clk);
+disable_clks:
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
+
+	return ret;
 }
 
 static const struct dev_pm_ops qmp_combo_pm_ops = {
@@ -4788,19 +4825,34 @@ static int qmp_combo_reset_init(struct qmp_combo *qmp)
 static int qmp_combo_clk_init(struct qmp_combo *qmp)
 {
 	struct device *dev = qmp->dev;
-	int num = ARRAY_SIZE(qmp_combo_phy_clk_l);
+	int num_clks = ARRAY_SIZE(qmp_combo_phy_clk_l);
+	int num_usb_clks = ARRAY_SIZE(qmp_combo_usb_phy_clk_l);
 	int i;
+	int ret;
 
-	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
+	qmp->clks = devm_kcalloc(dev, num_clks, sizeof(*qmp->clks), GFP_KERNEL);
 	if (!qmp->clks)
 		return -ENOMEM;
 
-	for (i = 0; i < num; i++)
+	for (i = 0; i < num_clks; i++)
 		qmp->clks[i].id = qmp_combo_phy_clk_l[i];
 
-	qmp->num_clks = num;
+	qmp->num_clks = num_clks;
+
+	qmp->usb_clks = devm_kcalloc(dev, num_usb_clks, sizeof(*qmp->usb_clks), GFP_KERNEL);
+	if (!qmp->usb_clks)
+		return -ENOMEM;
+
+	for (i = 0; i < num_usb_clks; i++)
+		qmp->usb_clks[i].id = qmp_combo_usb_phy_clk_l[i];
+
+	qmp->num_usb_clks = num_usb_clks;
+
+	ret = devm_clk_bulk_get_optional(dev, num_clks, qmp->clks);
+	if (ret)
+		return ret;
 
-	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
+	return devm_clk_bulk_get_optional(dev, num_usb_clks, qmp->usb_clks);
 }
 
 static void phy_clk_release_provider(void *res)

---
base-commit: 6bdfbe223ed4735073c299a6645ebd3faac3f51f
change-id: 20260930-qmp_phy_usb_clks_v1-25b9374086b2

Best regards,
-- 
Wesley Cheng <wesley.cheng@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
