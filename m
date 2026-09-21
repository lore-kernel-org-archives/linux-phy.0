Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53107C982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fObvOIdisOy7W3zs3WQ9wJnwNTYrqtkc74Cy04dX/o=; b=H9UhvkB8cj2OmZ
	uq+C8up1ci6PcnGRjtPAj4IMv7uZGEvuLQ4yQaY2p7/evZwpF0o+7JArWSlEDkxMBv6WSkWSLQ/+i
	NBCjhn68ztH7C6fF04GnH8X7KpT2khh0qom1Z0uYL//gBvyfiZsgCcABurc6LUWhz3M+hVUJqZquB
	SuWv6Z5yMpeuAIm3VrQ2X5rGMG0CAl+IFzQWVL7ZZ20UI5GL1yO2JJDsskxcpvaPfaXl6ow0Wg2SW
	5zTX4XoCJHX6+jXV5YZo0PVhk6YbxZ4enJst6yUurwAE7wSLI/aDL9p43sTDYPs54vFSkdwOueeHz
	9FpbfqpuFj/0jkTmyoKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUq-00000001xo1-3fbl;
	Mon, 21 Sep 2026 11:47:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUp-00000001xnO-2wk5
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 11:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=7+/F22/2dv8UjNg0KAfcNvpXQQPamBpsBmK9dAFECfE=; b=FBSDsb9Y+SFv7hdq+oMt1OEtvZ
	56go0YIU6ABfEqb7iM8eMYPKe9U55N2eyDsanKTY1UWGNZLL+jb0uno3//V33HKCeOE8g+s9FC2xJ
	rqenUXkBNXRQmXw0diNDg8TOy7wpXZ9N6R4k502TXEQfeu2/6XIFp9iFK8vXUXJKvdfGzshFhIW8e
	l6x94edyTMOTaa0QsVDPJrpbwZcMrs9dhV4XwNtI/yGYs+bjZ0lrrM2V9s/fqTgzOCSAz5N/3tBV9
	hONGJkxNg4hGlDL+ojviVbeE/ZDk+uhj86a2SNh6dxWAGO8Qks+nPIwGOt8bMTGrcQbT5LV1r9iRw
	h3mQP4qw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cUk-0000000CEU4-0PCB
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:47:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAeSBO1564800
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7+/F22/2dv8UjNg0KAfcNvpXQQPamBpsBmK9dAFECfE=; b=JMjgU/VWZtODXirr
	iJXNcuic+P82OxdlOQgOJ6nimC/8nbLvoMo/tbWGD7TM+15zb3TvS1H4BuYp9Bu0
	dz2OC5C7IUg4vJqx836oAB/NUY0U6EVYQb4dURdZ554nYpOGrUWLOd56TDEmUapO
	EPVKPADjY+kEGK2QwQpLkF1Pp+ZNJ4/utB50zw1iO7620b31OgdFV9D20kL5I3QY
	ZFTd7AosTSEizpFhMjtZp0wRtIaM392TtfWUe0HaI1YLfGDZqlMe8bkm0ROj6NPV
	5N5RaStzCk1FCMutA+rKXZW+YoTDunA2apRKNb1sE5ZEWWk2cdhsmHVlrDUDcpGv
	pCypyg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtysw1423-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93bfb2da664so382612985a.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 04:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789991251; x=1790596051; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7+/F22/2dv8UjNg0KAfcNvpXQQPamBpsBmK9dAFECfE=;
        b=dj7nqZctvodWeXQtvMPNwDn+uifvumy66D/rUW6hv8VS+XUIilCMRd5G1A1ildRTsD
         RSYtqus8Ax5fXLNE3FU46sgl0+Gu2AyTPTR6+RG4UBnKHhQ6SDYSzwPtCH6vBfUoNtnc
         abikZPD2iJ3hCYR5jeUo/4LoAZZyAmla9i3lj9D+dPKMDZL7C/4rXQ7ADscn1QymtYka
         L2YjvchT7Lr8qlw+2GrDhEOHadaDewzNVgfux2mx/TZjZeraMGbrU9xitt5yASthQLd4
         eeuxOYVbIHOKXKTtwXQqRdM3hyHMHtaUdw2niyNj8j2QSrXbUoVhAqjk2KyZ0W5zHTfq
         62CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789991251; x=1790596051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7+/F22/2dv8UjNg0KAfcNvpXQQPamBpsBmK9dAFECfE=;
        b=SfVJp+IzN/Kdh1KIbPCW9Z+5BiUafA5TiK/GF4DveNxlcm054SsbTvUY4FqwVQCtYw
         ZUBwA9OALWybgcTPwajOntKPcBoekDg2O5BWs273ln/mO42LTwbNIKDQd2d5uKoFpVnu
         HSmgIxz09AeKNEdAYCd/SnYJXxQcpxkyQVcxANjIM3ATk9bICcwDwOWIVoYK2MHCTEOX
         Ycp9J9mRidbm7ufbM205M0WPi3twQCEDOY1wS4EqmI29godGOt97DZv+Au24GNCE7Pr7
         keu2hFVRP0e21GyZ9R0BQQKdB6WJlaGF8bnvw8JQrlpRGGH9bdghMXaXw3sBzvk44tYQ
         rxwQ==
X-Forwarded-Encrypted: i=1; AKwUvBzq6FfPKx781GmBRrsM5sTXFK4Y9j3X9GzJd1pQEo1+/y66yc/g28HeDrLDqVhFd0Oalb4PG2Rkqf0=@lists.infradead.org
X-Gm-Message-State: AFuF++kfdA1LHy/Gr4I8YB4yTKrfzU/8aX1kZdQd6O54Rv98iLyM+Bmf
	ZdN+t1heWIqKZlqDnwMFMOJKHN6Qv2/IwAKA5rioMNxgATHtPZpIKXWIkv5ClPOJOBH6vENmYrc
	xE98/PFKjss1H35OVxDqhfEcAwWbzoRFgBI7cHimtY3xjcbugYRlRJq1AHEypEeg5D4Ws
X-Gm-Gg: AYBFou00xThhjEW5DIFSLUhtilTvPhZYln2Lj2+jPy19J5Gov5+x7iogHMbLW5Y1G1/
	LYZvVpgaZrRwxIVddyjKDbvQd/K3rUjoVKFEftSYDBC3o4TDGJqQVVvx9DUgr/CecEDP5tIsWN/
	ohLAmtNuubfSFXDPVF4CmcNBkS56933GAvy6Awm9C3I6hMDNQrjYzz8e6VdaXYfJJE8kH5WxTRh
	o7YfemZTKyP0hBm4++y5Q0lglPbE57D9XKoa/hIVzWl051+ZY2BhKBDUcPWXynRHKAVFBRPLDct
	HXUxI/7x4nMJ59m7Ks/9r51+D5zPIwcs4/0mR9DW04G+/W3Aboo8C/JxxLOWM2CW5ujbzchHMqb
	d4uApB61TjiTNjMxBh4c3NVj/Bik=
X-Received: by 2002:a05:620a:1b9a:b0:93b:d7a1:ba0a with SMTP id af79cd13be357-93c15ea192emr14626485a.53.1789991251504;
        Mon, 21 Sep 2026 04:47:31 -0700 (PDT)
X-Received: by 2002:a05:620a:1b9a:b0:93b:d7a1:ba0a with SMTP id af79cd13be357-93c15ea192emr14622585a.53.1789991251103;
        Mon, 21 Sep 2026 04:47:31 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d04:d483:faad:1e4e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fcd10273fsm227980625e9.7.2026.09.21.04.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 04:47:30 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 13:47:05 +0200
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document the
 Nord eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20260921-nord-usb-phy-v3-1-68aa02b12b96@oss.qualcomm.com>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
In-Reply-To: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1725;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=OkWVP978AHDjCopobqmugeMjaSrrcUyZCtkMeO7a0LY=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqsRlKX/NX522+fz5o8SXg0j/kZd218m9x1CLn7
 rV/Ov2sLrSJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarEZSgAKCRAFnS7L/zaE
 w+C5D/9WAHNDSkD9yY+JwRqT8xagfRKG4okubXjOtWuc0cRBlijLz8PvKoANz3GQr1V6Yh0lihs
 dmv+tSCfu8UOyzgoTU1diLC3FtErAWCF0hffb5SfXIx65ioYccG4rdk9CdjrioP56vtJ7VZvzK2
 pGVFS1IK64MgxrOqdN2VyAGxvIRmecnyz5tpMD0I6DSRm4HHo0nLI3daHPdfv63zYvMaaGN2fa2
 a4pLgAtfKqmkTEaTmehjEq7RJYNKTjzFPwRuy0w3hjyBnW4Nsc1vMkxhuTVZej2UCZhJW/XRxM5
 xKVLNlazBsC0xWX40qmDrmojXQg7FGf9qj38qaFZBVr1bHojFqXIiUWqECsPKI7pHMNRWFvoI8U
 jERdnl+sDo0J/C0oVwQzp1GeHLAsUfX9T/vrhBHxwQj64WU3aidQfsDauwz+LiSqmLibUCzbalV
 IUF10RWuinPnqbL740KYkl8JtdJ/iNwUK/4O97/UK9y/QLL/OcqVehI2gg4otZRMUUuc9nIUmho
 Iacsm5+4/uoiqqccp7FOesB8JLxPGguuL6qNO2cwa8hc1b5r8wYZFl3d6U187BhiW9pPUklixEf
 pOu5oVBA+/BlVjGG8KCOUoVvw+jZbf5agP0nJrBB3Q4bDZM27RhZJITew0HIY37SL/k4cLKsq7/
 cwKHYc1wvBjXqCw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfX3xqpL0POp7ZL
 Xyr4crIBxBcOyp5ouylF63rjkrwOiZNrCB8l1Ue65uZPhmAGFChD9cvwVZAH792yEyX8AJzQnhH
 AizgdGgFapopNrlWfSvIVBm6pa5e6M47TpEibyjMEQmFDK9GxxrWpSG7O9j/Bdv+tYDczbimGPA
 FFqaKgJrVvXU3Xny4ZmEOhFshxvXz+dRxjfsb8WqlImcj3mt6CwF/mxDy41no95kVJdaozieiJD
 UjO6muJI5/18XREHqsDOzmuxe0leBhoL5LfkS+ef6sqNVxMj26LuTduGKM8TVQ+2JplxtfuVTgL
 gpisDwwwbEHnP1OTM7YgvLeUxAKYQqQKHB+fSZ+KcKpO8eryuM/WMzXDOisWPfMphHRt9EPVq55
 Dvfe1Xs2sK31JCrLLQ76UXkc0tS5wjVqVtYZFWZDpoX6FBRN9tCAYDyxCil3LakcARQw8EFcG59
 f6/syYfWu7736yLIa0w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfX5FGYnXXtyMRY
 Yszhlhg6iWJj7VnF4PxHQV4LE/HOLU9zpOM2toO35tiF/C+j03L7jwAKJ27oz8cW4Ls1zUh3Pl6
 vcIRZVDj30dvS+TyaILckOcjwuC+rec=
X-Proofpoint-ORIG-GUID: Uq9PRhs76AXsqx7ttM6UcoJNLP1KWYCp
X-Proofpoint-GUID: Uq9PRhs76AXsqx7ttM6UcoJNLP1KWYCp
X-Authority-Analysis: v=2.4 cv=W7etxhWk c=1 sm=1 tr=0 ts=6ab11956 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=M4M-QYXtbn0wZdemrtAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_124740_930393_6060B7D7 
X-CRM114-Status: GOOD (  13.35  )
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

Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
It is compatible with the sm8550 eUSB2 PHY.

While at it: On Nord SoC there are three eUSB2 PHYs but only two QUSB2PHY
block resets: the HS-only USB20 tile has no dedicated PHY reset and is
instead reset as a whole through the controller's own USB20_PRIM_BCR.

Make the 'resets' property optional for qcom,nord-snps-eusb2-phy only,
keeping it required for all the other compatibles.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml        | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 096f6b546632..931cd0e7d297 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
+              - qcom,nord-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
@@ -64,7 +65,17 @@ required:
   - clock-names
   - vdd-supply
   - vdda12-supply
-  - resets
+
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: qcom,nord-snps-eusb2-phy
+    then:
+      required:
+        - resets
 
 additionalProperties: false
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
