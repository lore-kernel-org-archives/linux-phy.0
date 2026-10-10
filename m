Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6593CA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=RbT39pUq/+Euzp
	2EdPrJ6Em+b9aG786uWCAK0ZtIkrNjX+w7RelkNluPdYhES5wg7jeTIqtK+ZL/w/y2uBrtIeGG7+9
	1DSQacyKK4qDkVRzGwUus+AafetJcdavcNvbfC8io2FK6bNLkvUcS7O66RPsoH5ZJWYu2TYx+BKot
	cySP7celMgzzXgr/MAu1OQsV2JRCRAKpMZR0Wt8My3cb3v0E4M38wPWY/n/EPSa5mvfN0bS8wlsh3
	zhlmwYYwJcFhZ7le7Bn8ySiJ70290ZbMCGTmA73P8Z8D1jSPm7E5FlirQqFEYpePjTTHyFDst77Fi
	kvhzzUTDX61JB7LWSsRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVu-00000008F8p-1lKL;
	Sat, 10 Oct 2026 16:01:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVn-00000008F4b-0Nn5
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFP26T639829
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=Iv/HU4WJYup20Aow
	9fPv25J0ElIW3hxKoM98EjBVaFalTAepIgZEqinJnH8a51PKoNC1CqRDMouXJrc9
	jr75dKgAvnjWddj3OnCGK53w1vGvcD5uwHjSPJWqstTSAabjwaghwIKRVm0H9Y8c
	Fw03dGOzzCwT+/TD0I8rWWtZy7ASDRUuSNVhZxKRw4z2Mzck8G5mv+xO0iCiCWFG
	2XOq2DZui3Tb6jksubP6/fWPaJSDv00FQhRuxg+lQgV24iGSiEgqJ9APaNMHmbxh
	vqB5I4dPeVnlbq0qF0SLMAc7VNijCRtVrGOqrqB+CT+KtAl2ipjyZrdeMbB3SLcz
	BjYwTg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7cpgherf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:23 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34d49d8dee1so1188052eec.0
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648082; x=1792252882; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=OXbrK8oO+IWsN6vytJtj1usKjY63sq89WcDTAZnfg9dil6HLOQTFOCDHL6VmuCT5V4
         1oWzZbOr8TUIfrttCBRWulB3xj8x9qoBZM3zoUP8aCRgcF28EAblNW4b8AbkDzfefnX0
         +zQRrmSaxRLV4jeArmkSk1+zjYr4J4iXIzV9YkbkRUe+I6DYoJ/jHqjr8V/bn4pIIU3u
         vy1h5vYsst0D09glwFItjNdD0trh7LzwD+lUR9LuZYlwmOcu/MEJas0R/UqbgtsDunhl
         Vne2alUynIRoqtP5t4ebXA8IlyUaRw1F6BrbLiUQbeUz0sJwuXApxLIwNe1P3XWEzHlH
         aFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648082; x=1792252882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=2au1Ggc5Tr+Y4LIQ4PeQOQ/6Kn7/WxfckkvOxxcUKD0LXyCAR6EfrPnNl/hs7i4vMi
         4D+bR1VIb1V1k8Hrbkv46yLhUULLqVD89xtcbPbbL8klWYxMJh0dZfQoi6NdE84sfRm3
         1ZE+AEaNRTbttGYs8so+8rBgOWDPouDebqmsb48gRZv2jjdke33kEt3HaFf2LIXzDhFM
         +xY3kAci2W/uWOXgkWtnhYcz64A6utYhWpvz1v6QYrqf+hr5Ir/YnY1GxD7VIbJzZSjQ
         E7VLjfWKlnnqETTvco4tjgBt6BNtC1npbF9yM5MF7dVmbsCKq90Q2KkXCX3GH41sSqQo
         p1VQ==
X-Gm-Message-State: AFq9FYKmfHTuw3NiuqKb5If+4tTVrFG+PjbMB4TdszADy6//BYsZVQK9
	BxbYqFf/Mx5Gv8WNrfN1D07es7XaqKAj1Vf/tuv7Ig+rbt+qBEGHxmnFu3uSlIfFrkOtWCNHVoY
	NBtsdWdhEFjn9zBBgtPlGeo7i6p+v0aSSxVC0YPZ0V/X8Od/nPZXwccsD5rATJ+Bk/TCVof6S0b
	6v4jI=
X-Gm-Gg: AYBFou0roBsZLIxhSR76d7871BbVTRcRdhb7eP8dVMd91IaPlHRvB1ELVgFL0li/OPD
	/0AHF1J2Ohk8BQw3B02krv35qeYaEjuwc1Vk8MDZTNjERnQ5iyWwIotBCvrzpcWzmnJkjJ7dsaV
	rb3xdnkxGZpvW/OcVnk8L9D9fLVF2CdGyDJE/bLyni92x50GzV37kdbbYVEi5iIDGa6r0cIydJ1
	uTxa9IBkuKvAlhdcyHd8W6xPSmKTKDL50H0h2uUCEoMnNJzdN4hwnccOafm3OxcksVjCvem9iAZ
	0eTrBbbgsxsk5/fAyNP3aPKWOdRnnaHVIEvQsmyIe30ll9ivnXwPGSsbFMzjwkDmfWSKg8Sfkcu
	ObMLUtPjIbPl8DDiT0S/aGLoFW2DMpdoFAA720heqVfJIm8ixr+aOK9g8lh4Id8rGDSoAkpUO1h
	beJJE4us5S3g==
X-Received: by 2002:a05:701b:454b:20b0:144:fa79:174 with SMTP id a92af1059eb24-16a61f45109mr6363792c88.44.1791648081994;
        Sat, 10 Oct 2026 09:01:21 -0700 (PDT)
X-Received: by 2002:a05:701b:454b:20b0:144:fa79:174 with SMTP id a92af1059eb24-16a61f45109mr6363742c88.44.1791648081353;
        Sat, 10 Oct 2026 09:01:21 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:21 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:06 -0700
Subject: [PATCH v20 01/13] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-1-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
In-Reply-To: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX85LQQLPJZdTC
 WJzlurj5UvBpfXYXQa/vGGhFSSJ+BUMU5CPgtoj81C/uNpanqAPctiXlR3JQNwi0AVONFdEft9P
 yUxVur1LLs0xuaowNzEPjOUhdgx+Rms=
X-Authority-Analysis: v=2.4 cv=StoFe/O0 c=1 sm=1 tr=0 ts=6aca6153 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: X9RrNVmd_OoZmT6hEuFi8xslBcJDkFoR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfXyw0ZBB4JRF4U
 +PKkZJPEFKOeW2dBMwbuH4SZDHyzrk5HWXQTEdGMLf+NPI9AbmU1g+CHp4ELTzJE67H/ihenGgw
 Gzv32sa5nqNwjUzIRVXFY8KK/TH7Mwj2sD1Bo2Vqf8qv6Cg54EHWCu1DNO4uNizUVE5PNmDE2iK
 5mIl9N0jMVFjRcJbzJx8MCvX5GTRrLWirSYm41dOozOw038Sx+81lm8XvdCU2pMRCqSzxFuv9EA
 0vtQn7L9GQWNrWpPKC6ImdoQCrlh3tPSfGNkOt62lrjVjDmv/9rXcx1Y3oChheniLmXlU3ZhZAo
 76w/S3ryTgF41+CJP64+lktpm8VsrD2W4n4BAcEGaDUDZRNimHDkLqgcfdsvIuIUo1lGY6PPwQl
 cKEooMjRxoWSiEh86y5emMe19uBIs7ZFNwwS2g5EDV5JWOhkbEj0R+Ph8VIOWe6JsTa7ugKxY4f
 /DKp/GN6+MrYx5BlkVg==
X-Proofpoint-GUID: X9RrNVmd_OoZmT6hEuFi8xslBcJDkFoR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090127_255837_9D9C3EE8 
X-CRM114-Status: GOOD (  11.33  )
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

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
