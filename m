Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A9FCCD195
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7V7EpKGJy1JY5jG2sg2RWUbOADAEibCQpRqqDaHMeXc=; b=lEc656PugXse3r
	7WVw2tAB3FbVnYcc9Q5QLr3voaIz+uR7wC5u4fQbdqbGqjux5gW4damOZ9XbCTHZ3HHp8bY80caYL
	0DwopUFth/4RBuihOieueAi3Ti9veKZ7e0hi+zePWI7euwmRmOgX7hDx3TzDBqDGXcRH8eo/8Bw3a
	wG2Fnnb0J7MZdoDTuOh2MWmGDsaOn2lHiD4cydiKNLfkGxG2SQ5c+Q0JS2jLn+CVdZdEC/X0rnR9J
	S8I62GCBOgmd80BiBV1Fe5W9gcUypGvSSTKKGQjbOxgaDyqSi7+y4dbPZ6+6vieuixNte2eqmDgNb
	tlsVSLnfMLsAytJvGbzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjX-00000001GwA-3yEe;
	Wed, 15 Oct 2025 10:27:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjT-00000001GtT-1S3b
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sRwF004288
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9dxyC6quH7bBbPyhL7oDzWfDBfFn2EzZa2n9uwCgdDM=; b=FYW9kyl0y+wr87oy
	kIocqhJerV4jZsaJmK67lNwh1XnCZOAX8iICWNsRWcuAGEHIfpdnGj2cD2jC+//o
	FmcBhC00BVfIVYBw2ZQvaCxFO7mQDRPKpPWoHgCPMdZaFndUt9g8ngtEXNBB6RsS
	ekt4II9mAynBz/XqpJqaqPZMM0MHCiKkb47F6kmw3J7Ra+7IY7zJRBjGLh1X5/qc
	mnOkRo/1veIhiepLj8JO1z759tUj1brFZdhiyNTOSlbPPXA3sjCTuLxFvOSMeT9t
	1ahmQDS0Q8hyUTdPzV8bC8ox6pTTriEJrDQtxUhxf6uXnmj+dD7f9YoZwWLfeIKc
	EU2ntQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg3wvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:46 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso16457912a91.2
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524066; x=1761128866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9dxyC6quH7bBbPyhL7oDzWfDBfFn2EzZa2n9uwCgdDM=;
        b=mjR6COYeDhUyflB8Xagwcj7rvoRZRYxw9MFe0+smqxOiabLuS1haI+UyIORA0itEHC
         scg/ouB8325TBX6H/cDj7mfnBm9cRXUbnrqzlm0jtbr3t9X3+tusD4c+xF6+GVl90xqL
         6miJv0UbZO1to6hVBPCxJ9kKVgbON6EO54GkUZNAGA+6IPQ0QdBmP4NLWVVmMa2wFPA+
         4QYYfo/oEENBmL4w1ZMwcvaYIRrx5JO2x1TkzQ+/K6ONLT5Ni4NhY3wS/yIXyp1XfxNX
         lYEuVhTltSmR6x7pgOiVtj1y4E0mnEslx1g7BZCEH4cW1fcfQWmAgSSYtAZ9o2EOsTlA
         b7KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzQE+IqupgOYDxDGUuk8jw8bousp9qsBSXGLTWiQaBtavRQ5iwVtS87E9gqnfvW/YoXORVithM8Pk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWEr74jRvNTj9969KInmMa/RyvW4HEnsyJA7zfX9DBvPwS3bpH
	mlD1HMsVcmbdJKLhQayxU2YH05bTqNK0GCb2U01lStOxGtRJClPKPe5NqFPatlSbag0FdyywPhQ
	RXOVUoZfdLcqqy+W5kKIqKkDHmhL1vyBzY1OrumIRGqmME5LHAtxsImw56fmp6QEGACDd
X-Gm-Gg: ASbGnctv2BizNuGfxBo9DzUNSIircRLFQgfn1FSaSGtclzuBz+cHsZy7Cagi0Xm4ttN
	elE9hhsRQ7DLwS5R9YxWAF41tXUy2QUY6iS7lefCE1ltUspggBGnBDf3E9ZbtYcwpZRrdROFdyr
	Uz7QMqGxbTEhjk49oHRrsbSGRGzBe+s/CEmvdTKj6baRO80WMxn47hsdHlErSnTTNdpRG2gpeo1
	AIl2qL4le4xqTJsJwM8tYFPYnbW2wUQ8pSxSQlG6DD5nK/SeyuyKDsWUwHSTBtAk4qZn/dS+hD3
	NBoMsuJYYJ1K0qUlQw0uHycfu0q+rv0/8kqENe9lCYlg26wzMapCPUFHG92TanvIJznMZtWXWtq
	N2sc24D4HMPg=
X-Received: by 2002:a17:90b:3846:b0:32e:87fa:d95f with SMTP id 98e67ed59e1d1-33b513eaae0mr36214189a91.32.1760524066108;
        Wed, 15 Oct 2025 03:27:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUhHoVQNkBercqqXziBPfBvpTbsZkUxtH4olEMNnox5DvBDvQQHCUBkTsQoPgKGFlfHG9geA==
X-Received: by 2002:a17:90b:3846:b0:32e:87fa:d95f with SMTP id 98e67ed59e1d1-33b513eaae0mr36214155a91.32.1760524065647;
        Wed, 15 Oct 2025 03:27:45 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:45 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:31 -0700
Subject: [PATCH v2 1/6] dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali
 compatible
MIME-Version: 1.0
Message-Id: <20251015-kaanapali-pcie-upstream-v2-1-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=972;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=3tneW7CCjtQAfCGKa5GYHwZz4i8Kyf2W6TJk9+8EAgg=;
 b=aPf+lQ9EHnOrf2d+reFP6xbwTFJL5+/B3kQQU9tsIPny721ATpGCGkg9dCBIGmRWehAog+JCN
 PkzFs6MpkGdBaM5nLsNtUzBMDWruJtyAkiElG29db3Sv4fCgBn8/aCX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX7L35mb952d8U
 FTjLWzFblZbaps00UpWMUQmgEiFsUNYyk+t9tlQLN39ztNVsdxA5/QSDsPvBzVXpWWoPRrr1x7F
 KEy9SDjmbzmW7grxyqutn82sU346CP1MYOXCxrMPakv3EXaGunRgXMHsvt7Na+odMHJkGm/AotL
 j+O367u8mj5zt64MWRNWwEJUCj71AVIapnUAzpEIuBttAT0FKvRa172RUSH3A2v+UcoA0yBtbjY
 SMYnfc0oQBHWFhJgyVv66PFolhY2Tje9BtbOGm/P3kpW1FD170XUpHq0y3pY3NRnK7TR5vaQBpb
 0TuPwlf/iYK2UDXyi6J7Qn1rdZ+161XBZEEZctRX0OUAlHcBT2TEhE+oBb+MBntGY2uLYAJMcmD
 NRsuXbyC+0hFE7QIDakpTYjOB8Ahrg==
X-Proofpoint-GUID: zF_ayh7wlKUos5Ons5Uk20sL2JpykTWe
X-Proofpoint-ORIG-GUID: zF_ayh7wlKUos5Ons5Uk20sL2JpykTWe
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ef7723 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=g2cXXHbr5MSVwvSK27YA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032747_391220_BE113D8B 
X-CRM114-Status: GOOD (  10.37  )
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

On the Qualcomm Kaanapali platform the PCIe host is compatible with the
DWC controller present on the SM8550 platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 38b561e23c1fda677ce2d4257e1084a384648835..8f02a2fa6d6e2ac3115cb10ccb4d22ae26a49f49 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sm8550
       - items:
           - enum:
+              - qcom,kaanapali-pcie
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
               - qcom,pcie-sm8750

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
