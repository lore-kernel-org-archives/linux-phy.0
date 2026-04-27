Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D5DFF8864
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 21:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJA+aux7k9/r0udbLrEnOUctw4KbVY2eEP0ii9QnwrA=; b=D0Dt2bGOEIBrvz
	JFJQ40V0lBUf1eQbVmNA2zzWh6BEJtukDryMzCe5GwRQ2UvX0Z2qXtamL91SLNgfHhQ/EacIAEmc9
	EAOrGYDPApEuO3Lap7fLNXmswMMVrPQHYwVZX9fd2pk50H5/kvzFLjQhXES6X++7AzKyOXjWq4gkE
	IXo3l7oUI+GdwaODEcivwJlHGPikeEkFYuuIlbutxVS5E3utcImdkzVC86VcXOOaJt5hKl//vm7Ui
	FGnJXtSRipynornIWgcaISH4F+hqb34cDZioCAnfHq0RicUGN6asbC/pOLtmEpDZOccJuC+L3hLTM
	uIynLEjlRtQcpn/kXWMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj3-00000000BtG-0Q9n;
	Mon, 27 Apr 2026 21:42:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj0-00000000Brq-3MSe
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 21:42:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RHTW5s1237201
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ecNTbhYHuyh
	QbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=; b=b5WrC9JW7JAMcr3KVwh989rq+Tp
	iPJKEqxKBpznej42ftjhEOsGDsjmwmyAvL1mPKfspVYQ04bGpMX9p+Vnd89xO2ht
	LF7aRVelvKON9i4K4J2S6o/M7v13F9i58VGZBPJ1kGHt2Ca4P6ba33HugRoezlbP
	YFfMLycar5ffs7rNdXCbdtSSoiMWtP0+oRup+9VEBTrb0lAevNd2KudfP20GCOnn
	blcbntJvAwr5coh6+x6FJqxwClUKKj8ImpmTt8XTA92sgciHHC5qZiqiuTdAMgEF
	Ie75FJE2d163MEZfRNwQhHGAw6b9jUVSc/qW18dNi3Z25h+GgZg1tuu+0Kg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt6n4jan1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:41 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12c35f2c09dso13698591c88.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 14:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326161; x=1777930961; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecNTbhYHuyhQbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=;
        b=EVqCr3oMqpLi2xC5OtdnlA5ogCpac8T7xC3qp5o8YUfFlS3pGYnmJ9ZzX9m2zWMDCn
         Q/D+ld2yBpARN5VhhbBfy1bL5eS2BKrRD7SA0isDq+o+zQ43HELDYiPBpKZYNrKyApfB
         PkXGwlQjeXDD8n7b+c/6LJ6nimFTfGyMrV+TuJUe87kdW6cNT/mi2Rw46kI9VBqpkTj6
         +rLHRcHpmI12eFm8GJ4w15bYRGOzRGjCHF0aP1R9mqZB8i0SizMKfmEQJEi+aj3H/qpZ
         afb0sbXC5kFFVKRrqjvDTSaNW/1XloZgJwB/1BGZ+BYSpUz6htIUt4tgEuDskbV/rgLd
         0ToA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326161; x=1777930961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ecNTbhYHuyhQbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=;
        b=OwYSairb6Wv93oUsWIm4yIw9ksfPSj2pj2H+rcflJ2gHMKKZP+hI0jj0WNVEcPlwFo
         fFAAukI930WsXsVFmYHcONHQVZS23hD+sfmDblC8noKjbiFGRt9OTDF03wkZ0JPg4YXM
         g3F5ONXIY3vtFGtSo+JKAz9L5pfWHhrcq7aXdCbslcR1hInqbYqaMi+dHVh6DD+PeyjQ
         32qJW6ktbR1J2GePgtgwCyeMJeiXy5O/pYO/NHlLOz32xOta7hdf+LPMwGHsTLM7LB/6
         3dY5nd+XLVqJRIJEOaSceavCS6OeIvFwoerVf7QWWjDOyYS4JeQlZLoWwAtZm5GJ8HM6
         fL4A==
X-Forwarded-Encrypted: i=1; AFNElJ/yIp9xPSzyo072DVvQoAYwZ/00y8wF+BJ8257FEZpFkGxeTGbD77WwS5zLbaUuKZEYXo7Y0T83OaQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YylzV6QmwkrLZ2mCJqAuYfVnWr6MFzIdtP/BR968rNtqn67Kdv3
	OqNhMvZ5IG3xF44b4C0w4TxH9u7VH6EDO4JQ2luRaJsg2m1Xbc1oydX5kgU0np7TbbOQILNYkQz
	UBkOZ/Wl7WPYZGP96ga0GT/qhUgOvnpl5dFUJiINUQ7OeRXNj9AEWJNPwah9jGVOY/H7p
X-Gm-Gg: AeBDievY5UOXyjCgU7tEq4MrimzQ1t+yms/78GbBRyFzZxLkyBKPzbNmIOnWEUIXoDc
	u4bIMG3C81OrfZx+YR6q8tV9X4wSHP/BkXS2onmqiDZCDZv27aTftGbCKlRs8BbVcJtH8KAEr/H
	dNuHsLJ7mEft9rfuYDWqW+sFUlXVEVW3YIJ8W3430CSDSJQZGOTTsk9lu631h7M81bhPbG7v/pX
	sJ75hgF5EjaSGEje2vhKyi30tz8jQ4oY6iu5JtZhUruh0DXeJw2sIdMo4rS8ZyL0scOMDfGfKvI
	A+59JHdigtDKM33P5t3qTi+H0x8OYHDsB/C9Q6DWQMMiIG5HLCV09rTuHZD7yNGA4vwO37FadWp
	A/L/YaxHq5+J5+2S1oySpE+6wVjrk7trwhD9uK/VnNWESdrOtLPK6/cGwBmzEj31IQTd0yCQdvn
	c/T2QvflPAJA==
X-Received: by 2002:a05:7022:1b0d:b0:12d:b8e5:5d6 with SMTP id a92af1059eb24-12ddd995d76mr319178c88.24.1777326160479;
        Mon, 27 Apr 2026 14:42:40 -0700 (PDT)
X-Received: by 2002:a05:7022:1b0d:b0:12d:b8e5:5d6 with SMTP id a92af1059eb24-12ddd995d76mr319153c88.24.1777326159951;
        Mon, 27 Apr 2026 14:42:39 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ddd927bbbsm653119c88.2.2026.04.27.14.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:42:39 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com, ronak.raheja@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
Date: Mon, 27 Apr 2026 14:42:15 -0700
Message-Id: <20260427214217.2735240-3-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: _a3I-fAESX8U4yy4nKyx6O7egl76K7wF
X-Authority-Analysis: v=2.4 cv=Xba5Co55 c=1 sm=1 tr=0 ts=69efd851 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=vC2bFTPnYnLVIQvTftgA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: _a3I-fAESX8U4yy4nKyx6O7egl76K7wF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMCBTYWx0ZWRfX6PHmonLwV7cd
 plTW3dknV/APmN6lDHmHA/yJ7Z5PBVyyxr6lOKSibEuO5klPk2duPxjMwnMyEmoz7TI6bVmEb1P
 2o12L49gmc/26VgfeE92HT51wVj+zKJOn7A7FaMenLooEbbRkuuNfH14DC6LnS9wuaYJVjo1JKM
 qyMCuIN3EAYou2/ol3vGohHtVfT7C0R5KWKX6D0JSXfqkVmTnzEd/836ptoyI/X6GCqi2566I7S
 DrOqcQxPHESt/ePGWvvYEDJmlZ6NHGKJpXKY1wng4jHYuMQH5ancjcZNKdvobE4B7ifaOy5OkeB
 qHwAjqVNe5u39Pla8BXlB7DRdk9ILpy+tJZ9s6V96keEtxlYnjMFFUkOWaSfxUr787NUd1uZHe5
 Fr+xAF4vzGJyBSo6L8aDIokJD8xgkFWZo10t/o3waqOmo6B0tHDXcjjUA5+oEDzkYKQxmRmn26A
 NV56aZixw/ieUGx4EmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144242_955429_7F9F97C6 
X-CRM114-Status: GOOD (  10.61  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
