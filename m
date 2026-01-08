Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE20D1489D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 05:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzHTr+AWShWfhn3bfmNENPcux/wiD78WK0k3+ckvQBg=; b=HTk/7EyPdHtiHI
	V+jn4eHRod8QJAYb6xg+yWwE+/2VgTz8K4K5CqhjYFXIHJJWj27tTVrf07kxj0CX8jL/VbQs5Z32a
	y+WhwldGuw4nNuazHvzOEtiA6CQ0TKHoSyc6yAucGmCvTK6SGrXOh41Bm5kVSCbCy0zuh90dJvMOT
	KwTZ7AWdBJi2s+WOQeYWYJJE17xjvcVUTcVYP1ux1HoMQuGcIFySUJqSy42IcetfQg+U7o4HFpLvl
	3vXVJRzHsNtul9NDrgqeibUcaaXvM2js8cepnweLcOFxfTe4f2vSU+8KfcUO6glNwmBFUNK6bRqPS
	qTuTeuo4YpM3olaRb5Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWG-0000000FwkN-0o2b;
	Thu, 08 Jan 2026 05:25:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWD-0000000Fwjv-2hOh
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 05:25:11 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6081DqSY877404
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 05:25:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6M
	qt56lPbo=; b=B/FqIs356xrsX8RSWtefKWutC3ITd9nvA2KWabdxWNmEW0dhIIY
	FR7noES8oCDnNnVHdT2K1cvgtX1PWRAEdqNoWb19GhSu98/dWBwADjRiSkxXQB5n
	ZUdK1HnbNQbkEnE+to0rSGkWLI16J1s8DiALMpd96LOkeUwSgbkeoFC1ryVplyan
	LJuGk/VfDtyRqFbRbMmpLYfviDH/UFozp1aqCACshEVlYdcDOKlJf4nI7Ok4m0hh
	+ludwIWYes/6wpvmIKJxi4dsOC6+1zGxJnNbPWeI7qs7zGRiYEwWKorGtUmmi8E4
	Ju2LPIrQ3uQ7tQY4L9TJXupPdxl64WtsJ3Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj2r30mvy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 05:25:08 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b82c2c2ca2so3438124b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 21:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849907; x=1768454707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6Mqt56lPbo=;
        b=AaVVq42QkjdcxYOhL26+rQRHUxRkW3e2z19yCbnrnQ6wY80AQWhdn08GePQJikgtya
         fshVK9JK/nijSrZtgizvk4y7xhCS4iSboNXR61RdaCVuxaKtmKNejQEoN1cp3kh1YYmy
         BKeTUGulJMiaWJPRgTsqT+Xco8YTRGHnLBPjK/ur7XVTYDErAZwAvU7W0q6cHxZ/n3Oc
         WmKnlA+74CUS1/kX9YSQTb/ok80cpaGtIP2lQrGKXTc+24b+M5xfZiJlr7VOiNezpxen
         trBBqVA3XeAANc4HEy5Qsxgw4cNcEs/uHb7dvU3j9djyg5u8ttqc3X6hkTYWGgBSHKkC
         tsAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849907; x=1768454707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6Mqt56lPbo=;
        b=iAvbrTpYOxsdK1ON+1z/ISav9IZuNRqDQrE3TecP3jldOGaG+sQwRbuECHgjSXi14A
         vxByzsH1sUimKXaUaiQ/jQBoptfiUn/Zd1f/1GHJXbqQQk38vPtZuZPRaNm+0YeyI6o9
         K3htToPD+5us/IPu5irOET6UOz0O2VFsD29uiV2AKf3sFbpfv2mwpeIxQe05/jE5/Lh9
         vYibuTD+oSaTtyKiZ9OUoABt5VoyiBY6fflGVbadwjfBYbcIpAfVbdWyy7lyw9m46Aca
         vE13wDVj8pteKN3VUydGqCAXxMKziae7W7GfIBLiwvZnZggvQgqYem5CsWitPNaSkGPp
         aOeg==
X-Forwarded-Encrypted: i=1; AJvYcCVNfJL0hgSmmlgWZnnO/JwmN4uV7anJTXbZZFUVSEs+NfkcHsMidKB1kULfsed3xv8w4mBvPCmfzrw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0rYTSoCAsXOzPCelWcfmQvp3IgsCHFRJhDMjPpdKBUrl13bf5
	MH3xoOcb/a0vvZrp3q1IoNuh4DybiDwStdcHrI7uywTIMSiC8ECO/d1XvtSf6L79ldDaerZ8x0s
	XTrOCKb7nol8dysL04gCtHKZqGat4IDfsPE79dnVPz3CXTaogQGAWuqXfHQ+JcBTq5iCUBgP11j
	8g
X-Gm-Gg: AY/fxX7OZcl27wrX+gRak+sUoNP6ASVFN3WvrfAKWiOqAihjr5t/Q47YGmp9wwLUUAa
	js7nNlrAgp5K0KKjTI0kAfpinhrvMtWDKanJJiBnM/NGEgsPYJ3Pel5kZpsPQl/bLorRk6j/pRS
	+5PCu1gWLwTm65tpGjkJagq8ILNO1uPvUYqK13QzKtBW+QtkWcQIXh5uQugguh0+NgKBRf7018R
	PbqhkH/wNY1z5aDU/BzgsV6U6Wux2cKYZxXFu0iiVfcVvBVxdVxFH+JCDvTUP0s1xFj4hY++rPy
	S4PeS2uGpgfKRfWfen9cB2+nJZvTJ6cG/clBIV8/93maUtVTXxZLLD2bkV7WM8jW6ZHQo63pqH4
	VkvKcEIWDneFdyKnbVOqO2ofc3IKmnfaMxpJsXkXnc+ArZ7g=
X-Received: by 2002:aa7:9a84:0:b0:7ef:3f4e:9182 with SMTP id d2e1a72fcca58-81b7fbc8cdemr3936895b3a.47.1767849906954;
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkC50Q2aJ655U+CHSbpfZEuTeYv1otkG2hAbeVnSEOLGvnwXr4wGCcorPHoMILiev+qnqiww==
X-Received: by 2002:aa7:9a84:0:b0:7ef:3f4e:9182 with SMTP id d2e1a72fcca58-81b7fbc8cdemr3936866b3a.47.1767849906466;
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/2] phy: qcom: Introduce USB support for Kaanapali
Date: Thu,  8 Jan 2026 10:54:57 +0530
Message-Id: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMiBTYWx0ZWRfX7F6NKCHlifff
 CITgl7Ta6/rOc5sOw29OAxmnYcPiQ30dQ2wmcHkPrbb+qb6GZ8Td/mKwWeVhkMuemCblLOzGJCn
 f9FE6oLTUB3V/oTLOOaUrP58abchKt75s68HI8rms8yKkjWlbXn0MpShlYS4wO82DtWCsHD8JGu
 fHNbtrqA8879ges+UuRKnmUCujt8Vxideoe28Dr3ZCOT5leCZgsGYOsX6phYEJz36QFnkSiCoFN
 Z0+JmRUgFcvUL8Hq+Vlse8HjavIX2sz6qfoktY5tZRctZO0k7YBTHeyLO/mHRD3Ca701LuS1lVn
 mNegsezauF/oyyjnXSnSuY+9c+pIQMmATcu5IDKIK9eQeLovKBJaR4TIL8a8wqmacr0znVw+0WP
 +f+DtXb2zHD3GqdlBoDjGvUETDoyItZ971z1P59VSjRCoklJc8pnUhdwfeq7Jy+0peIwFCcx0W3
 vZMHTF+/gx2NfFojQdg==
X-Proofpoint-ORIG-GUID: Qb39tcMyOf6UOYZVoQ12rqPXyVbO6uN8
X-Proofpoint-GUID: Qb39tcMyOf6UOYZVoQ12rqPXyVbO6uN8
X-Authority-Analysis: v=2.4 cv=S4nUAYsP c=1 sm=1 tr=0 ts=695f3fb4 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JHePba-_m_tI3beqYUIA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_212509_810278_B25C79E6 
X-CRM114-Status: GOOD (  11.40  )
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

Add support for the PHYs used for USB on Kaanapali SoCs.

On v2, the usb controller bindings have been split and v3 was sent and it
got merged.

The m31 eusb2 defconfig patch also got merged.

Changes in v3:
- Rebased phy binding since glymur phy bindigs have been merged.
- Removed RB tag of Krzysztof on M31 Phy bindings since the changes now
  expand compatibles list that use sm8750 as fallback instead of
  implementing the fallback.

Link to v2:
https://lore.kernel.org/all/20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com/

Changes in v2:
- fix author name typo

Link to v1:
https://lore.kernel.org/r/20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com

Ronak Raheja (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
  dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for
    Kaanapali

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 58 ++++++++++---------
 2 files changed, 33 insertions(+), 26 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
