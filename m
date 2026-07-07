Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11841C44502
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 20:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbLiL8sOwI6djgh3BTx6+XciwaHA5xudM7UUHUvmTqw=; b=eiY2D9nWQ/tRAH
	2pEwNNJw250UsjbHE706yWWcy4Be3A1biqOKSdLoBalHjGZlmPzmg0E3aWJwmy1rt5ra0fQjKrRSt
	TvdYw01+Y5qEcsfAnEGJGPxLnk24o6cIBjfRYUpO+awF7xAe+qOWIAs47/EcFFMsVlbrQTSHnQTN9
	WwwUknlBdNGQrPAWZQB1uC8d8f7xY2EntXEjoHX3x+ZlcNvC01dcU+fd3zr+xUA8gam6HYJhyDZFm
	mw5dV0vitHn76s6MWepPJE0yvh12CmHmPJaCkCaUdwJV/5qY2w0xLC0AnE/cJKpz8V6TY6rBb76Eb
	qm18okHUCcArkOlNa4mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTp-0000000FroM-1p8H;
	Tue, 07 Jul 2026 20:33:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTl-0000000Frmc-0ygK
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 20:33:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667J5Sxe370244
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 20:33:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lndSDlfCv+Q2H3n2AzMISLkpQQLVAdwXLJjOEHyLrDs=; b=D4te5oz0etoeifdI
	MVqFShPvcHjD0Bo1DJY9lBF6L/mt2ZCyDvH1L37CF7gLMFPp3DXrp2lk0HjOP937
	fbENyp54GOLQ5zIcdSxP7QwYOQtN2RhIAEkPBe8V0ghHSeBKLbyHs3od55xkwAcI
	XbWQYgryyMBhNxn2bD8F2fyEH6SUDpF8/i1s8mQPWk/FQY63xTr6YtKh6tfAPq8m
	LIc45CccUB3gLO8QbqQ3ChbkHv1W343RN2KQ/LAhVydP9QLwZyYBBLnZXSrsq/Wd
	v6b6Z+C/jCOcpeadipWGUJviSu+Cli8TtBj5IWSZrTo1EoAaeZa4UCi5A6FDwrAL
	1dLi7Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8vun3a98-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 20:33:16 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c85a298cd62so4149200a12.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 13:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783456396; x=1784061196; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lndSDlfCv+Q2H3n2AzMISLkpQQLVAdwXLJjOEHyLrDs=;
        b=OTBvI1sr440j3lQDAhv8T8ICHFwYgyC8OzM9NovkE5iTxGSa4eY3MqSF+/LMblWXdU
         cdlYQZz+x1/iCKogUdNaCEnLR2JpM/Ny8TZs/NHNOHUndI3upb75DDOdfRRtxlL4R+HM
         s3xNTN3KzCYgei05M3jUlUL836eibCEp0Q9EVsId4TJ0MUyiluPIdt65qaM6lhVQu25O
         jhMMeUX1bv9x53/YWnsPLWNQ6uJOWloSUk/JLITekCo7tPyQ07PknXxhAj1M9YHHeGGF
         O1PGtvurz3GGf8MQ+tf4rSQvRmGukFpmDTxJn0gqKMDGTFI+46IqS1ZlTxGtqbvsQJIy
         WTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783456396; x=1784061196;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lndSDlfCv+Q2H3n2AzMISLkpQQLVAdwXLJjOEHyLrDs=;
        b=ELRKQi1Qfgv1Uoa9jOvvLPX1hkfvac0m2yEx2jk51K8qY0FoajJpRmPXx7tpMNl3iX
         6PWB6rJGi6FAoqO9vdvHUIxokFCvZza84JTyyIP2ZOwGL2kQCtsDxqGjInUQOY0c5t54
         gYDhFlHnXsnqzOG1Jt53Ls5AINqeZqQiD4jUEpJv3Wv+oTNLQU9YYLrd4eEnp1mmiYUK
         guBUh6BsvAGg2QE0t1RSobhny7oGwtH5X9JV3sT8ybjjbQAVl+5Y8vQUro5Jk2aWxorp
         jNTFx/bzbY9cNhenTlHHX1Dn9y6JjzYdLw80IqjXlsiRahvd4zuGFIgF1BYSLhTHwH/l
         YkKQ==
X-Forwarded-Encrypted: i=1; AHgh+RpBp5NK4qH6LaZs0RlAPn7IArqnHH72Ol3RMpDX4jSDOxRpMPlQ0kCuS6ZT9SRFVBt8l7kEUIeB53M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKRFPTP1icWcPSc2EJ9uBOXn1TlmphQzbcDnbav0CpODreYNZS
	6XVmzruXIXECXkaDfNDKOu4fbcMdKIG9lS0/nVLL6fE6WA7HHTen55ePOUSqZNu/pIWuxLk8ytk
	u0wrvyugnTLt36Q93u1IhboE5WhmfWm11iDvr1POJN07hh49rmM4WHczjLsEF3+zSGQGm
X-Gm-Gg: AfdE7cnAu0c0A0qqh+/AXCZJHThBEgDazUUXyE7+vKzlfQqafYj5HW36Gr2H6tqsrKQ
	orV+Mx/yZrHnjB/Lw1YRTlTjGOQQKga7APlxW6aqCFOvpGVq5Pgd1tQGc+wSc5N6TUBbGbKCeyL
	DyGgEzZkc28lfuWTDE4SWFF3IzVAVpVBoEiqhLa0wCZfwV/5Z1xU5PkWDo/LL+wm2LgTkMxrQ6B
	e+I959vOROTMk/2IgYqmTejwB7FYpgSE4FSTkc6RAmy1NfR+oKwmOl5PUuIrrJteJ/J0vq56wX9
	ERAYQARiFfRLT5ESvmAE11CRGVw9bCzIVo8CGgRiM0esopQcKk87yQf9t1O8ii5rRa0J1+5NtE3
	3n8WFWHlLQ2AYBeCVhq7YHTEkESlou7zL3/YkgMDk+YD3AqtL
X-Received: by 2002:a17:90a:b108:b0:381:5ede:1296 with SMTP id 98e67ed59e1d1-3875547805amr4965576a91.11.1783456395886;
        Tue, 07 Jul 2026 13:33:15 -0700 (PDT)
X-Received: by 2002:a17:90a:b108:b0:381:5ede:1296 with SMTP id 98e67ed59e1d1-3875547805amr4965545a91.11.1783456395311;
        Tue, 07 Jul 2026 13:33:15 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174839f89sm11975804eec.10.2026.07.07.13.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 13:33:14 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Tue, 07 Jul 2026 20:32:46 +0000
Subject: [PATCH v4 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
MIME-Version: 1.0
Message-Id: <20260707-hawi-phy-pcie-v4-1-8d9cc6324947@oss.qualcomm.com>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
In-Reply-To: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783456392; l=1941;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=Ers90E5n5OZcfZCnnXF+yZyTmU+YDE8SNMcuiTigNrs=;
 b=L8Oo4nvaSFcOAV7wXnV/VYf/fok6fXiHhGudQxCRoWxWPjRFKk9JVcIYh1M9TBhwhPnF64x1c
 pq4YLHQi50PCQRYPZJ+Whk3Yvee4iU0azaZT0cIcHpeO+w9KIJ4hXsd
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX+ZoY06nvLBHZ
 9VanyXKIYYlUx1cBkHgrc9akcbZK1M/SZ5S52QEySt/W0hvtt3yuyBsZ2mZJAs02+q8x2KYr3sG
 lxNjlVRju9xfkNPdGWXWIp61unWSh6M=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX7XPff6zJeKeI
 Caz0gnqceFheIvw+8vqhoGoblRs4EwEgipi0e8kJOnGp7BYdHK7I7czojhrnfdgqURSgFC7wpMH
 Q8t5zaqhVnWKR7GskerBqaA+tmBpOtz7iOt08Mkx3qk6DJH8xlw2Ulg1JSz4f+D8MLsaO+aXcW5
 IK3fLqXzgs1rVCVfJJY0mEn+QpxGX9L6Wk/VGLMvdfhu+BwEfI7LXwv8ahi4KchOSM9L6pQSDTH
 42+vhTA91SLqMkAkEC2eHx9xvZakyXKQeUHuGgTZ60RHMmc7d0qCXFrSZWGODXpBQ78OlsVB4Wq
 jgZ68iy2hjFGSF9maYdmWamdBDyXoPUmAzavC6mN1m+Fgc8EeEmUJ2Q5TyCjHcFGJu9Y3R5GhD4
 MNZ4Gc2wWTWVmjE/uXUpu0AnsE/z1RyqwjdiDUvcoaIV35LkKsy4cr21Uvj0c/qek5LDDNW2UDY
 xVJe4gduY9tNVEWI4Ig==
X-Proofpoint-GUID: uGEJQyHeuP6mdRsJF_CnqmR2JQxqKA_G
X-Authority-Analysis: v=2.4 cv=N+IZ0W9B c=1 sm=1 tr=0 ts=6a4d628c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Fc9aOexgWALdB7SI6KoA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: uGEJQyHeuP6mdRsJF_CnqmR2JQxqKA_G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_05,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_133317_282299_17994941 
X-CRM114-Status: GOOD (  10.51  )
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

Document the compatibles for the Gen3 x2 and Gen4 x1 QMP PCIe PHYs found
on the Hawi platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 108cf9dc86ea..259ed9678393 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -20,6 +20,8 @@ properties:
       - qcom,eliza-qmp-gen3x2-pcie-phy
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,hawi-qmp-gen3x2-pcie-phy
+      - qcom,hawi-qmp-gen4x1-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -196,6 +198,8 @@ allOf:
               - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -223,6 +227,8 @@ allOf:
               - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
