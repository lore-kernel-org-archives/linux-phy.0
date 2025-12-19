Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847B7E66880
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 17:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxI9uBIKYTuIvoU7qgsSwJRWIO2d87jDMkO86wPCN50=; b=P1QFk+fz1dQklR
	nPiJiNC2/cwRAN7A3Otmq9MLpQrCOq7bwv+EXzYTMIpw9YWRfL43AzK3lu/I8Bj/afpIAY2GHL4w5
	tAqB+gHYf8qs8V9yhI4crOQG+KQ94SYVWV+mb5ZU5EBB+GR2CMUzGx4fgzCC2Wey4lKBcdGLyuau8
	P+xt2Ax9SHiMEpeb3kaz6xnMO5f5EhKJt40wg2MAqd1U14KrW/yjDrYk01hkPeCu5PlPHQ2eSIknb
	qLCUlj7CrVbfEJISX3hmTJBs+Uh1iahhv+sIojq+VEmkXMe1tdWmzYga9iMy8V6quhGOpetSwLmqw
	CVAVCBsu0GVIG8ebnuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeKN-0000000AiTF-1CgU;
	Fri, 19 Dec 2025 17:31:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeKK-0000000AiSK-06k8
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 17:31:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjsmP1410503
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9rRpr+2lGVf
	GO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=; b=Cks+pymiEH+Pk8kSf4FSNR096X9
	UkWSo4KzcTg9M5BHtki8/n/CsG3NXAJ/NcAfMgRfRsKIhuIaWm+UDCjsr7flseMF
	Sor14s0DAojjmdpdtcSkyEaQblGwFIweSgaEYNfJjcP/TgmaD43mdmAy4cavIMhu
	mP75OSnI0DpDrHD5oEDY27dGF0nnd+kS1o+Igr22s9XrNKzh6Ge9W70+6Usun++V
	6fIpf7UvMl05R+IlL7INjFgncs03oGOTbYnT8LNDCNPr42e7/DoWi/D5CMoieoY/
	OJtZGwCccuy3MVzPSPmdfozK38isHHolGl9D4NCcks+LqH2p9cDCEAhQoVg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cuj28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f177f4d02so40465355ad.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 09:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165499; x=1766770299; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rRpr+2lGVfGO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=;
        b=dycV0Hhtg819jRv0Q4v2DOt4foQeXDbVB/BQcVnsXra3NKD1CQlthNdIPyw3ZZoW6f
         XC1ME7wsK8iPo4zbZyF2urpqWgrdQNUgS9F2wzI+iUAmzshCfg3EeAFPp1sl1y3ijsZJ
         2t2ex9wp+sSoXcMa7a+49zMBSeDc6rcAB1mulfWrigASS5nPY2qFZ9XhSeTC81LXAqcN
         sMvbGBfzsbeuTOrrVIpV/VQKLUcLe5+HhUrSldhDYH0eyMcJbQqjl3tkwc0v+8USZ42T
         rH7wZSOsPCz9t//mG5LrD3WYAFo8iXVIexQChsoe/wxdv5AR41XuP22rW+t58oRHj37V
         6WAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165499; x=1766770299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9rRpr+2lGVfGO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=;
        b=XtWYZEIRx2yURzRr/f4sUu4FfcOYVmleki9huhdRALrvcK9xbeONdzXJoKomqrMFek
         jPT4eZYc42UYxxXNs4Jq2c+LXthniWUdy83ioH1zNpf6tN23w9pYqoKV2ajF4Mnfq+XK
         Hk+AF5aPYNnpQIuC40+YET0HpxdvMt2UZD3ncAWDsOk/c/FeyZytlFLqN3CmJJNJaaJr
         J7lAiEtbi4wBNZvhIP2VFqghaVfwqkI+YXNBsdnt/EYrGuuVf+Veuk4B81E1kFCjVWWr
         9NfAYgXP6KJWIwCOjF+PRgO6I+hlCzogzWoUaOra7uWNgQliMUCwCfW7I75jlTLWj1+B
         OoWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDTs80MzGHrNA8QxrxnAH6Py9zjbZyzCLpqnvoPKkbAH7GiTQwx5GTiwErUwKQKh3r/wBRV7w8QKQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNKBIReO1m/P2vr+vaC9TWN7SJt1glCxwP1SXxkbNrFcsRQ8ps
	lF9DGk+N6hJgs2r+JQhiHqDfOQpYp0jSk67kDyUeade1zPqX3HZOBrGG6+F7O1MsHvr6l735c2D
	WkTMOVHfwLxcRUzjcQQRkt2f2Bzfjsi2OM0Tk2uy4dkFbzajTlVc0jwLUj9kW/J7fzOh7
X-Gm-Gg: AY/fxX51Jg6r4MnW/7hadfCx7Mt57Txk6ofS6J9DH10Ss4pcy/q8YHcKFJA+GpanwSR
	SSdEAdx+Rh3tfANXmHDRQOp+uwDHEmPcOtIaks2tvtocyyEH7B3tcHqrXGfko996df7Rj35wfj/
	JRC8wVTIAbLw3iiuS3HpLKHgN+UxF6RaYtfWsJbBfrSf6DErep+YZG5zIUAW0H4VGq3vJTgOlh2
	KjsT0EI7lS4qmb5+SxQS3XjHAWw9q7wuA/ToVRWidf8PbqFb1UhFf9BZMuTLmDeswt6QPdCt8ao
	544ZcMbr7CmD4OQl7vtUDDWLLlstjy1vc1HRidX894CVuCmIKb8Jzt6Vl2FakQHtjVBoj+iLRbp
	zEvN4nzxRZqxSwmb9Q5+NYKWUNGLLZavDpT1rrWVpBcvszb4=
X-Received: by 2002:a17:903:3d10:b0:2a1:388d:c084 with SMTP id d9443c01a7336-2a2f282fb33mr35306385ad.42.1766165498894;
        Fri, 19 Dec 2025 09:31:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkdGvhSvHIucDXnFNADNvwoJ2Phvw2oT21ZR5c1W3WAQHaZ4DaZrpeVugAoWJynpe0OMwzmQ==
X-Received: by 2002:a17:903:3d10:b0:2a1:388d:c084 with SMTP id d9443c01a7336-2a2f282fb33mr35306005ad.42.1766165498357;
        Fri, 19 Dec 2025 09:31:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Fri, 19 Dec 2025 23:01:08 +0530
Message-Id: <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: oI_9MTN-2OvsKe94t46j-rh-HEqCpcIm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfX/oqQzMtXUY/b
 IdQ8cDiUjc1GEf1WqIXCLE8h43HyIG5At7DgZ1qa8+X4LexdvNEsTzLR4idxOJBxFgDX3hDmdKL
 vfdk9JsTCUXc0lsuymow2ZqTAowxRbcxZWTF9yxbyJXoqp0T8j0KAvOgDjUzD+UqM9vwuTfy6ak
 0a7zwTGj73cuG2mEqtQw8WfBRz763oOnteKgXmquMd8XnSULEUC0hV0Rky6SQMCWoQPRgrT+M1F
 QSwi37512ENlHOHVt4kbDoX50i/ub+pgOTvZr4GMDTfoL8c7gIyVuv4cS0EgPCcAuM/WjuL3+fV
 nHS12TDxV4srwbgCk7CDmdOXj8WJpNDKkTuLSawwVVIfUSxG/fm836sm9idzMZkl6xQwJ5kmgwl
 q4upNoIgvQDB6rBC8ljG9ThAKXTdvTPqiLOCEu+8sImL/aIqd2041CTAi4XonisZAZyO+ecFIZ8
 3J/6/rrIg7xVhKTtLJQ==
X-Proofpoint-ORIG-GUID: oI_9MTN-2OvsKe94t46j-rh-HEqCpcIm
X-Authority-Analysis: v=2.4 cv=Lp2fC3dc c=1 sm=1 tr=0 ts=69458bfb cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EBPEhcQlbJxYYk3eU1cA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_093140_088074_1F7B7891 
X-CRM114-Status: GOOD (  11.88  )
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

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..e28faee466aa 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1039,10 +1039,14 @@ wifi@0 {
 };
 
 &pmih0108_eusb2_repeater {
-	status = "okay";
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
 
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
+
+	status = "okay";
 };
 
 &qupv3_1 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
