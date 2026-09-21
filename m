Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC86C982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuzUad/l2ROEP31GlwHSK+Wuhy6Xtweg9/CNIo4ioPw=; b=HSRTdWcIYPmSQt
	p3ZjERIo7craNkKttYCCzINjOwv1A8BbNcqqjMJnV5I3ko1I48vr+Rrb+1Gsif9LqnpF9HfTYUD5q
	g20F8+U3xC3KASLO3q7DFLs9hKZ0tC180BCgPAsSl6a9lj3bmT5K62sBBaZ/p9wXJ4B4BWxRzQI/c
	4pUAEK6dcKIn8QSoXusU3JXSOS2vxr4MEkGwhrVrHRucRSxWpJXzUGYV8KjsPKnz8u40JO7uGHodp
	ZAnTnFK9650xa1tG6vlQr4bdkmXXeEjvELNLq4VoewwjLuuHLyTmepeC2ARsVxj9UVWah/+HOeE45
	JeftgQvltn+WEnIW+NTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wih-00000000wMz-3Egy;
	Mon, 21 Sep 2026 05:37:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wif-00000000wMO-2qmV
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:37:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3ZE90290845
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=; b=aeurDXbn/MsKIUKG
	x+nG9cEN0ZgZobOkB6vuCeShjXipCEBH1vPWSq0ivDZ/xJ9KPenoHJJ/ICEFKMBG
	IySns310qB+bTCbdDXdkI4FiIqQVGp9FUq3Pu2hrAdBmeGow1Hz9wNKe4HFjZ1Ey
	/Qmulusbd6X+4s8STAHipPsV7bpJLmD+2E4PTxdMuOipYos1SAQUsJuxqLUjk9dt
	gVi3f+HNGyaRVs5sfeif3kglnX/V+VORTWVovlPtD/N3O5hKI+Vo4RdDV1cLHH5s
	x1TPpXK6qBuHt4RpfGOfmqngIJpjERY7uYXBCIqx75zZ51hTjyb99/dQ3b+7xvQG
	Q2AyOQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gsjfumuun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:36 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc489e7a701so3975315a12.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 22:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789969053; x=1790573853; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=;
        b=JfdvV1Zg/KMadFf/oKZjJBAjY1wHCBNhPnR43FJhEfgWf2u+PmmlgmKuxCuxUtZ+O3
         PzJhJmZ+4wJGuImI/wMNmZOUbLYV5pr9XHHK4TxEZx2DHY5AwczffzK3xLi6bypdDhW+
         ye9DPp9XLWs3xTFMneJgcDeDsoCNlA05K121hvlJ01jXexJJ+pn0dxiLcoa3GWRQY/GQ
         MnTQ/bqnigLHVz7Wbn+s0fjK5EZ5aT0hKhYj1dT4+ORnzVyvODUbezT7ZEMi4KXEqEcK
         CWZohuRmb8jWETSSGmLOwDHLAUMpLhRpl53N/+qrREyPk5HJVTyOXnr6t4uVWAicGmqC
         EXYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789969053; x=1790573853;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=;
        b=tN0Ml4rlDF0XUgkEroRAgtrtaR9Nk3jeYj2+n4QdPXgUOO23spjNFSOCiZfxOd+r/5
         goxRw+Xuu6tAxtEZQT41OMf7F5nMQ6w9lMsV1l7GWaZp/ZzB0+86L4rtfKXyVOCIPlf0
         RngCNKGDoklAqvZz/zgEvfBdMUTO7WOv0/2bMlrkQg8P2UL267XNvJAOvbtXmH7f0cBw
         uNtpMzZ0SR7Q74sET1Tnf0sF/ww4FZUN58keV/fHYWAPN3Rw5ApDXdVK7YJM8VZbgnTR
         RNp2HjNUGnQl0W/e9yEYqzQlDZ/DfJxRaGmxudl+DF76MiP+MhtuL0T9xTZAxIR9p5KP
         j3fw==
X-Forwarded-Encrypted: i=1; AKwUvBya254OJjMxqD1cuotNP3k87JGzY0IgdSM0LZhHE7TacEcqpXHDUPlBFwzOUbuqLTfha5DyJy1QJLQ=@lists.infradead.org
X-Gm-Message-State: AFuF++kyMvhOZA27ZOzov6oU+X62Th/uPu51qps14at/f2w/LX2Qqlgg
	ubQXgeoy8KI6tDV4I/8vqcJonmU8UOVQb8SNpHbv4ruGvV7kGWmr052esg6lurSnwAdLcFpF33n
	F3o4d6SO81miJGuHRWTovrwyTdXnaQnA6nFqLgeJBJcVgDkhcaP3ssXrmktM9JFG0XLr7
X-Gm-Gg: AYBFou28DrrZ+uM8qxAbot38VIZdmC8e17a8QiSAtLtIySVO/za1twa22REMl2IMuXd
	rIhF1OmtKeORKrAr4mYGm0+aO8A8snkRK/oRXTXy/VvKJRrUw4Y1C7sz3WvMQp8oIeeSbIGa2GC
	Y5FUV+aFDNPxABno1TftDNfxkjyx4r+YfMxNDrWgXqGeL79CtTr3qXXnSpLUP7UMoaAX/XMcjhK
	BALVs94iLhE7DwJv339ssC1+RhJ8xh6jgCV6+tEHq7BkvlNqXKtaO9xA+JSR0RbsthLzhr6N+Yc
	emf1YZfrI2jGtv2CIJ1GFWBMklYQJQrq4iK5dWGVZcLlCtXeXxiTE4Gj2X2q3taz22RBOG9sZVA
	ydIOSyCdRmN8amgHFGpT2vFqn0Bg983G1iw==
X-Received: by 2002:a05:6a21:1f87:b0:3dd:a196:5397 with SMTP id adf61e73a8af0-3dda196546fmr10465691637.57.1789969053458;
        Sun, 20 Sep 2026 22:37:33 -0700 (PDT)
X-Received: by 2002:a05:6a21:1f87:b0:3dd:a196:5397 with SMTP id adf61e73a8af0-3dda196546fmr10465682637.57.1789969053073;
        Sun, 20 Sep 2026 22:37:33 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55d45a6sm15054568c88.9.2026.09.20.22.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 22:37:32 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:07:10 +0530
Subject: [PATCH v4 2/6] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
MIME-Version: 1.0
Message-Id: <20260921-nord-v4-2-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789969033; l=1074;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=5BpZafnsEX7T5i/WZquEyzAEe3ckLbNCfbpYPY2ev+A=;
 b=qPQQ33Qv1h2OpSHMvPj2DQlR2892pCG40LT8YpKZkA7jH2hgQunN5ZStmTproBsQ5lzbExt7N
 UP7aAnruBYRB7EelY2nyoVDQj4AKvIzAZKmTugIXGNa1KMKo9dwBH4h
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX39eJAZAr53YV
 BhEDvDEnObPCghd45LmB+blNJeZYaXgjZRect0ZQONZSDEpcLyg2qSR+kGXlhU6+XXm1u8RIFCZ
 SUvtN3DBA2M5Dk0GKMSaNFiAlIUANaA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX65gVWSiVdkTf
 Qzi2kTN+SdL6jsRcNJbJ0O/k5roKQJwv1Eoxjb9SZ1zXvSizsNgIjZi7jOuvNfYwXAhHt+OGRq4
 JE+HziCFgklesdyFtS3qKhWP+M2tkdr3TYySYpW/zgus+yyLEDuw3/56n3zNO74afHH3HzEQIcp
 NkkeuiZQ/vSMqZPYBIkayKO6ejILmgjZNYfCJlU01XsnYVJoTHNp4KdolsWLD6evO7e9OuUxkUF
 OFQf1x/+iw5wKSpG6UURUJA9eWrXavkrmf81LTe46RlUBTv7epXe1gQIKlKPKwweT5t6b+bTb00
 wrVXsgAKpbq5rA+7+rapO8RdHbapd1j7OvFccyIEfgZDO6rI2UwS3bPN28sxnfVqyak6ztmUYOX
 sdgTDcMSu2HnnNYk5RNqmd4fRxFuglQfTXPy1iw3oCUxCHzjoV1sQGJlMgBywoyfhuHz75UEn1K
 zzivOJn8HYpWETOQIuw==
X-Proofpoint-ORIG-GUID: Cc3qnQo223m-HYoczQt5_m28_Ti8GuEC
X-Proofpoint-GUID: Cc3qnQo223m-HYoczQt5_m28_Ti8GuEC
X-Authority-Analysis: v=2.4 cv=QKv91QLL c=1 sm=1 tr=0 ts=6ab0c2a0 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_223737_838768_DB767ECC 
X-CRM114-Status: GOOD (  10.45  )
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

Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
controller binding.

The Nord PCIe controller is compatible with the SA8775P PCIe
controller implementation and reuses the same binding definition.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 63630a814f28..b8ba2c4449b7 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sa8775p
       - items:
           - enum:
+              - qcom,nord-pcie
               - qcom,pcie-qcs8300
           - const: qcom,pcie-sa8775p
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
