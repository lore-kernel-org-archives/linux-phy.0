Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88362FF885D
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 07:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgjZ9qmhzPI0XIwlpWLyZnP5rDVK/Xy+9tyzuogetFg=; b=V+48KeOveGU7r/
	6V5OdSrPQ/51O0ejkX0FH/POj9arIfnEwDGOrMNjQNyCdm6+sZ2PwJxm+/qdRc45TxgjuHXsXCFuB
	qj2TMHCbIspFb0F5S5r2sBqwC+lBJ+Jx28s2rsliO3ViVk0V6vtt2qR8Bm7MveOOYQwGY+Nv8gtDq
	uUoGL/eBv39IYuHUK/6GAofBOxHMbFTadzuJ/b/1GgZplxwFyU0Ipro/ZsdfCQRg4GnvywkHYiObU
	EsVANN3i0bKxm2MZZml1HtycWnHXa/LIQfAXc4FQtWIOKu21S3NC5nKrQT37Lg4eWSLJ1gLAAmSdJ
	wZ1GXqcUFVwCFc953OcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGX08-0000000E9Kk-3DCB;
	Sat, 25 Apr 2026 07:00:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGWzx-0000000E93u-2P81
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 07:00:19 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3QPTI2366872
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/Ff6lkNUcmH
	Y8eKeVweo0bOa1Idufu7/zbttF+e+/7I=; b=omOVidos9YQYr6k628pThYfsR1+
	u4r7D5VZkK6tFJMyWmYWI5HYGnRE9mduRkWL7/09C67SN+T7mx44mF9H33+kWd2j
	LgC3caKCPrP4i1WwZdbnUEPIh5KjjEsfmV1GqybHoMy3LvU+i4OOSYc/ESQIZ/Du
	kolH90zZHjPNDE9rxn4garTGRz+6pf8zyw0zd/RWIe/HPKu26jQeqDutEPQK5BAz
	39m3DxhK6gGO6lL33sHVjgJUGDxxIDd5ol7IqbfPnapkYSW0vHggqLzwX4okvzzL
	ixOOs/vzKuuxhqmSOjIhlmFeCqGjG9F+FBNGNEBixoXH6onz/8HiArqs3Fg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnpw0buw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:15 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1275c6fc58aso12694232c88.0
        for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 00:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777100414; x=1777705214; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Ff6lkNUcmHY8eKeVweo0bOa1Idufu7/zbttF+e+/7I=;
        b=RflKcP87GfZg4+g0aATkrM2lnbGm4kSlj0kxNTLnjxG0PpCR5eK9k2f/cRdGP1yDN0
         8YiGLyKXfAeH8uAxoug+FjYKkjdnU9ns4X95el43HqFyrZw38ppuHINXge1dveGeCHT7
         n5D04rcDlYxLLSD8keQUK2dIyae2pAHaa8BNXYXO09jE7DyTBr9jNS8JW2vnB0xn4zfZ
         uy4ruNqKV7MQLmQ6VmbrsnB4PvMeoxGsxu7UtsMRWE0ipiVYyex3twiPBR7bUQ0RFzZk
         DdiQDGqj/kZiwXAn2dpdqQVaFGjD006ybNrvCNoShByASCE7mLtUFrly0j9xgpmbQZXZ
         qDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777100414; x=1777705214;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/Ff6lkNUcmHY8eKeVweo0bOa1Idufu7/zbttF+e+/7I=;
        b=isWUT8uhUqhIkVX1d6NXZAXty13Ew1c5BjqkCDeejoGChXDslwiLnoEiiglbtFQndV
         /d+IFxr/k71/AsYXllbYdwb0rw5CWkteLs+8TtQ9R9eQxdW/7T/Ygj9gwnCVMm7U3hH1
         mTpxGnKltCQ0Fv3CXmbU+L3Eu9tPH/kzGur/dfVdv1Up6KLsWGL7MbnivYjw1n/wQLba
         COdSrkr01ZnHYUTQvNWKaiSb1b1mRpj9bXiEsRRfecTxYr7PxiS67K9k93UyT4UhETWB
         4eLHbBE5DNFpoIILmUaDyDueqkfmu1j0GhiSgNhxWJ51YHKQ+pFllAs8gp78N0jLtujM
         ZzIw==
X-Forwarded-Encrypted: i=1; AFNElJ94XSUcXUFReE43MPFSGDY1ggn91Eip5692fYikvK5VQKdbhheoosE26A2YVfJQ8F9tV2AmrLnLlMk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+lIbGN+2BdKSyVRwO5uRxLKmcmspPmEwIEktzNG6cqpWwJNkV
	/sV/5EyYJ1EI/j06d4VtfRbI8fxOCwKqZ6Lgv1U1M3e3UlceYLa4TsSF2ZtyFhyKyBSlhBmwq39
	sCBbPtkLUf2yDM6YRR/ul7z8nhCmApoU+1oCA+1+mpzJjXuYJ0MgF8/tNKFwAobJE6ibJ
X-Gm-Gg: AeBDievznkn+fxRi8QhjmN2DsI6T9sUICRiZxSRLQRw0hJ7OBpA9uoduzB6KyXyejPZ
	BRScyXs0h25rJGgMOyHiiQQfAsoYOtaKtHO6BueLI/MQ/Onb3AvvzLWSFJSaiylUIc39ORaZIdT
	wtuiFJ/sKn5p+InmTbo6Gj5jiFw/OUX2ZJYW+VmWH4cZjX7FIE0jkqS844FxuADRfHZ4CAKhBTC
	kGEy1gVakM+4DDq6XA4TONgsS1uRfAk3Ds5zz2EEpAmjgmBxBw4hmUcLmLazHGm2+2uOL7o3Zy7
	f3K6zP2CY2iyDaDhrB7prUARlh7CJMamta18zEKb4nDv0bd9pWIR2PI+/qkhRWYE4XVskAZwGVp
	bdb7st7l0Pswa9bxKPtYp9+HKN5T1ODT73YSui+T4v6YsxPUTFamr0OUrPdwwlqckt91kNDv8kZ
	PZTykUMI05Gg==
X-Received: by 2002:a05:7022:90a:b0:128:d715:b717 with SMTP id a92af1059eb24-12c73f82878mr17045181c88.13.1777100414438;
        Sat, 25 Apr 2026 00:00:14 -0700 (PDT)
X-Received: by 2002:a05:7022:90a:b0:128:d715:b717 with SMTP id a92af1059eb24-12c73f82878mr17045173c88.13.1777100413911;
        Sat, 25 Apr 2026 00:00:13 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12dc2dfad8csm9430630c88.3.2026.04.25.00.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 00:00:13 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
Date: Sat, 25 Apr 2026 00:00:00 -0700
Message-Id: <20260425070002.348733-3-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDA2NSBTYWx0ZWRfX656uRc45eMl0
 tYZOwMyUkyZGeUF3PZuzu5BDY6vbqK9ONsHmhjDmKeOzgWgKoqqhYZ8ouASKVLVtlQQugbdsVzQ
 nu3tZMUJgm+zYLI9dMg1YhugQt+X1TJgQbirIv3HbRaONx3zgFO66eJwLwVBgCm696gQ8L0tdud
 l3yroo/XM9sYOXIMNy8fSfuiX9KrH4uYmX86VuRhu4yecdYG6jxJtv5y7082+R+u6D3QFqPXIWk
 ItoFAEkGvurwfm5VzszKSfNwUork0ztMSNnXqtb1eZ81hFjdi7BdkH5nchZhJP/HyImrgK+dDaA
 LXDwDx0VBITRQZfYLNkneR9mONXTelIPbl+4+ankEOMcacImlfg8gM08Xnv5owaMvdWpQUdacen
 mnuBSwXvR48OWzV0dTH/h6OxrUsm4U68I1VBuDm2BFY4SLBgw3KAXgK8epvaWD/UDzFqVPNE3UU
 JsShNT7vD2ITVmZKq1A==
X-Proofpoint-ORIG-GUID: ItG5Nmc_RiNFUkmF59m55cB7yyaXsaZd
X-Authority-Analysis: v=2.4 cv=RaGgzVtv c=1 sm=1 tr=0 ts=69ec667f cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=mzSaEd5VEpIjRnDHYqYA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: ItG5Nmc_RiNFUkmF59m55cB7yyaXsaZd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_000017_726300_FE0557BA 
X-CRM114-Status: GOOD (  10.10  )
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

Document the M31 eUSB2 PHY for Hawi which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the Hawi
with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index cd6b84213a7c..c0e7e2963ce6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-m31-eusb2-phy
+              - qcom,hawi-m31-eusb2-phy
               - qcom,kaanapali-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
