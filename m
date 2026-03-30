Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FA410D14A2
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 12:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGRyGDkbX99d9RVMADSr3V+4ulAid8ETixaGOeIJ6mk=; b=vadpeKJ1A3TiOH
	VdlXJeAJ6OEu+3zWNmXdmrLU7Y9w0CkKuEoJdcKlKEqOQzUzILqhFR08PMzrlgJo/mn/d6t2HtzK4
	5z8Tkin8mAvY7W1sDyZmvi3eUafmCQbDhM7B6A8u+frJA+kU52KQWHFS7EK25WEFRTim8Xm+esEdG
	N9+VTjmBiszi7sWJmarJwBwxYr22tZiCImElXwe0HE4/EcCpMhlhlfwJO/3j9LUCfRjfG2gDp5n/1
	eN4lWD1VM6Bfhco2JqO6gb9w52HRtr2+wleom3R91scIPiL5v6ONZJ1zgOH20YUm1FlnSgj8ygWMo
	6zuGTFz80trArG/AAqqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BaY-0000000BEx6-1yzS;
	Mon, 30 Mar 2026 12:19:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BaW-0000000BEwk-2w6I
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 12:19:25 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U7KluH2961221
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 12:19:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=aMqFjynZc9+8C7oZM57AGA
	WB02qxl8TCH767XFRNWec=; b=oWz3V/0bLDtAcs9i2x/eDa1he97diZF+q7SDth
	EgjtBb4HG5BcK0ktzKPgy6Va8u0DpwMB4YSWruSkE2N2BLFz3q4WZpHSMYSW/gLm
	vntKwC7F+YQ3VEmOjEkzH9bIUWE7BuPEgZp/3ivWLqmnV8KwWNbY+mjAatrV8xVZ
	pJaNXc+ZcrXaXOOqyUJ39dh6xnsN1UTSdJHsNQecpifDXWkNd4qn+bZc0fvvGO7n
	H/DBntUILfpy8hEsBAL0j7+qNY2WW/BIlMOkSp4OfWIMMvv0aE6/pGONqEelUGrH
	65aJtu0WidKkBEg8AUbbojq0PCuDjrKmhwlZHCyyFCaJwndw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d6ufmm66c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 12:19:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509219f94b0so9216861cf.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 05:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774873162; x=1775477962; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMqFjynZc9+8C7oZM57AGAWB02qxl8TCH767XFRNWec=;
        b=JV5qwabebsxz+PniaK3Xui/GiIO0mmqqUbJPBzaTkpn6Xe1a8ohFOLF/UMy6hw6R6u
         VRKTkk2WkHxsr3WkzYT3l0EFY89bIY1cEcLdmwEVyeT8l3abg9jt2wEjtHQoOI+8FZlh
         Ck0EZNajYqnFuXDWaUpRQZht7z+ywr+zJUGEtrx7V6vl58joe4zEGDLOL75SThoDzb5r
         7bd91tzKe2AM507WYlWOeN9y/CkcPIQe4HfRY++jBb+oBQqeChcd1woRjFi9v3B1UTaY
         SPQiAx7tFtR3GGr3qKNCbFG6AClvag547F6nxDs6dAqswnslfZbOIfBV26MVAE+yBrPm
         1v5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774873162; x=1775477962;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMqFjynZc9+8C7oZM57AGAWB02qxl8TCH767XFRNWec=;
        b=H/UF9bDinBv9z2moHJlzH0v3KWu12OCL0jppB4d2cUXTBsPttoC21nISYW8b6+35lp
         0/t//cFyodUUys2ceDnXzJ6DYscXFAKgmXpPK1iI5X1t0+XLd6emFfbeQ/WBnxribPb+
         LFRtOiEPSlg54WoU6zgKuV9YORsPfaYgr04JSgt5aNaOA7M+xP5k/LE90FllIlGmvMeZ
         uOzgPdUM6sFJFY8PZvF7jD6wnxdDTOmiZ8p23niVPbFiRYZwOZQukX4vqAIWj3SBRmgp
         JHtyiO3UI22skEMCnRPVy6UEWq0loRDuCshhzw0b1TWPeDThYZpP+TEXSXyJ5b4HPfQE
         mMxw==
X-Forwarded-Encrypted: i=1; AJvYcCXGyLVaX7YrFR2xdbORq6M3bsLI5AVcpiPEjhUIyRx9yWYdZ/9ImUcmqwBqIXhNsxCZcRymW0KP1j0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7NYi6wanhAjd7E8YLNt9cqd3rFLJhr8lmYhAxcjsPzCurfKQC
	CnOX28PmC+YIn3kX9HFwyk7iW8BwRVl6NQw/tDpkcFEmaOUylbMhruKiqtZGldaYeVKk215EYBR
	12DEGi9j+ZShzBW9BXeS2/VaG5Bz9DADa80x/tobX1MepIbeDT8oVPqK0MyjQ127wO/LY28Mh24
	Lt
X-Gm-Gg: ATEYQzwffzcaoZClyZfNIw+I5fvrAvhTrnldA7hVXCGerkHKKvKm+M4ZtTaWVHPsbcx
	zkMmk4pQUTzliWUG16qbfsIAp42Jt2uVp3ijZzqjF1UDUKzRZiQvTGKYkWEvqkt0GU9duAlhAGp
	VO71FyB1eCZHfV+zEU3JBVBhiPBwd6POKZxkA9NHBpaoiEIa5ilpoEmbJizx2gZBYB1diO0Erlq
	3MHzuU7Mei/XtgYyluz/6DOg+Dqe7ectxdz+Dboc7UcFCnWKxPfwQbI48Y0faNoTSPouMCFkEct
	XZ3Szy6ZPRnjYEktSfb9TIkMM7Sxe/nneDuOaGU0WhVfwEQY1n+dkr+RESUpFD6uW6rtdP/fssh
	7pfimU34T6Tr9V+W+HEQjeMkVD37l4Q==
X-Received: by 2002:a05:622a:2307:b0:50b:3e64:9b2a with SMTP id d75a77b69052e-50ba37f5ce5mr166358121cf.20.1774873162439;
        Mon, 30 Mar 2026 05:19:22 -0700 (PDT)
X-Received: by 2002:a05:622a:2307:b0:50b:3e64:9b2a with SMTP id d75a77b69052e-50ba37f5ce5mr166357711cf.20.1774873161800;
        Mon, 30 Mar 2026 05:19:21 -0700 (PDT)
Received: from hackbox.lan ([84.232.191.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48722be608bsm413873505e9.0.2026.03.30.05.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 05:19:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 30 Mar 2026 15:19:12 +0300
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Eliza
 QMP PHY
MIME-Version: 1.0
Message-Id: <20260330-eliza-phy-usb-dp-combo-v1-1-2ec11e793a08@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAD9qymkC/yXMQQ6CMBBA0auQWTNJW1NJuAph0ZZRxghtOkBUw
 t0tunyL/3cQykwCbbVDpo2F41yg6wrC6OY7IQ/FYJS5qotpkJ78cZjGN67icUgY4uQjWqd1Y41
 ywXooccp049dv3PV/y+ofFJbzBsfxBfaPv056AAAA
X-Change-ID: 20260327-eliza-phy-usb-dp-combo-5a117520ac5b
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-bc6c4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=N8y7OV6b+feOmDqAL8o/2q7Q8/GPG9MzvQf30vf5ACM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpympDOxOzJJ1hAxqzkUG97Ljfst/WDDYhxOSpm
 X7A6aS0VxeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCacpqQwAKCRAbX0TJAJUV
 VnVOD/9uQlcTgEi4Lai1j1rnXdSdBm3Huec5l7i/Rnrnc3wooEGllMNYvdZgrBmUol6p57q32kO
 AwCMx7se1bp6yDYJNA2R9thUqcCrndItojlgcgs+dUhTEx9CmNkntH9IaWg1Eo0KW9UdPHiEtb+
 m3t8CmZXDBrXmPzKYGNsT5ZaIFZnXY9njJBHpzobyctmHYxv+dtBfiu06vlFFwOMB+rOtTnNkjw
 F5b4nReWPv+V3J7zLps0+U3Kaf2E4IZ7d3tWcsHzX6DstD20yvePONZXjcOug65cabzm9utUe8S
 UaW2SbGXJBUUunVnitDp+90RtkPzj0ze8N7iExfAI61jBTpUUWTk2FDJShJY9QlInTl6joYeOxn
 hO+/dYjwvZGEQb9LLyVV0IthuEZFsIJE3+J5E63pBCZ9LuqkJqXyPDhR0EsSwZ9m093BxP6Vnkb
 E8cNkZfEsPfhKzEJrze5k+YkQerXM2EOEDz/9bkffk211+pOqMneBfKvBnewcnzUzQGi19MbHkL
 jjSfaqYjDCJs5zS6I3mCfqmwnO9PAxxFTXo/5df+aKRJ6suhqdBXoJ1H5x7wTz2j8tZurLB5E0m
 P+AYaHcIX3mwKyQ2JOwQwb2qCL3AIjLex9hT6/1J//p1yNKuy2giyOsQWaIpdO2PYal8gua6nBm
 6Oz96iZEzm6NOlw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA5NiBTYWx0ZWRfXwOxMwOISbN09
 8EwehgK1xfO5pq9cJZ8B2gd/TCjndoaEYCpzFKTnwbweFd4pFEcE0fsFM/ZbHaVfyZiw+z18yFz
 Bp+fMZbvmeMcRmaW11WQqxK6P+WqtTCAg32iPDPT/Lzpe1merJmxao1a7tY2KDVNbP79No0frn3
 t58nH5sHnlnri5FU53J+ZWkXJqpjiHVf8rYmdEj6YvUeu2+y2kFdVCuKc9Z6x4SBzPbJVifUK/3
 IGnMPM/haN1jsAeVHMke2gfJQ4/68hqxOG97YGvvDDTKfWiRbJlkFZvVTRDwloJhskcOS9+4AwB
 tQOtKUNrklRZOvy4kecZOIbwcWWDGYt+VtjQcrfHloI8zgNyJpZf+fYNrcqxcQxGI+EEf83q62y
 Q+m4HU+sXaZq2QsxIGy4ofJqjLu8gWfJ/fDmpDAOtFNUFLef2Y62RLzOz1hjNYoyQsXh8g/3d3B
 VWoCtgZQ0Ps3lULotdg==
X-Authority-Analysis: v=2.4 cv=aOT9aL9m c=1 sm=1 tr=0 ts=69ca6a4b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=1UCgTMz9MQc3icybWezSFQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=sFrIIvqvNyyY2lCVqTgA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: IkdDlTHkBe_XzbVPqJBM2Qe_ZK2-D8OH
X-Proofpoint-GUID: IkdDlTHkBe_XzbVPqJBM2Qe_ZK2-D8OH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603300096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_051924_764925_F757A73C 
X-CRM114-Status: GOOD (  10.90  )
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

The QMP combo PHY found on Eliza SoC is fully compatible with the one
found on SM8650.

So document its compatible string and use the SM8650 as fallback.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..4eff92343ce4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,eliza-qmp-usb3-dp-phy
+          - const: qcom,sm8650-qmp-usb3-dp-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-usb3-dp-phy

---
base-commit: 3b058d1aeeeff27a7289529c4944291613b364e9
change-id: 20260327-eliza-phy-usb-dp-combo-5a117520ac5b

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
