Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1EFCCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5ciysF/M3j59a7QOA3W7a/VHfXwAzIvsYed1/bLQSc=; b=cfVX2t7gO449N5
	cfNZhdthCEYta6Unba3vtET+Lo7vt+KgeVyfJt/o1S/A5LTjxnbEhdDvbmwQmesxhrqS1FO6MdvOO
	QZJs6E+216WJOg7SfwZVc7xMF596GZIP+x4ndAIfoSdSqlBVA7Zw1edffg3gNBOGix06WOclgOjJR
	vFmDWWb8LAgJRWEYsfygwLYYVFF2hPrdrMd/EfZj9jP8vHyciOaK0/E6cv9LLquZSN1Yqyo94R1dS
	8ySClJVCKjtl282gwFOsaOV6jprwOfuU9acMOzzcxVg1QcmFcD2Z6XLWf+yQLmbVTu6wwbTJ8ZqVt
	iIbV8laFCsEJXg6+mang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5I-000000085Wl-0c2C;
	Fri, 15 May 2026 10:48:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5F-000000085WD-0sF1
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:47:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F4rcrR3197662
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b5cWGH4JJiSLE2yXBQcPdSMMDAqUH64vfOo+b0Xkv4A=; b=BYBuTwEL/MoUHQb3
	N0SRFh/E8vvJsZq6w76AFlMzQaeCwRx8ZiDDkb2lhO2FXgLg44TW7YZahfJUSLiT
	A0jht+V5m3L8h71CfajHFWEfpr7ukmQzfXgaWrulHivwPorfLdAX6FVgoz8C2Sh+
	h0LzwKNpuo/yyytWx5PUppK+C6I6KHJt1JtX2JKeYLSUT53dShe7hKbCKEj8O/l+
	xfFb6S6qW2W31zo6QTbY/wuunw33NgvfSVMWmh+9CiVlekViGTG6QfUHdyelwAUp
	UAOcTGoPtIjIru9NkdwHksd3E6e5L8+pF5NbvtbsHWaR3HNSJtZTe5B07DlVZ6Dr
	mylqxQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1qawdy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:55 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c828acf7c1dso7897465a12.3
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842075; x=1779446875; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b5cWGH4JJiSLE2yXBQcPdSMMDAqUH64vfOo+b0Xkv4A=;
        b=YXLaGAvl9BB1O4PGxFoWOV50h9a139kkjix3c0XeWHQFrklPEK9HVRqdSszkAs1/n9
         /kpseH6mQok1eguv4/CCZoG47hiZn0OfEIQWCuQHU2rBQWHi0VpPKmRiBwjap1e+1a5P
         8n3kyoAIAPdBzcuxuNzTamJPBfax4DMVFIXU5gGTj/Nkfme3ggYcl6gMgjjuA6N+/QkK
         6gEWpn5WiBM3BZSQXdyGhSa9OviPqgZuUaVHUo55fwpl5qxGBPEb9OyzN9pBHQyH26Ri
         bhnAtYrGOcoVVq1hp/NKsFchKiSqnScUYyufFcluOE3rLMh9FXk2GcdaonPEQxBshMxN
         ifnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842075; x=1779446875;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b5cWGH4JJiSLE2yXBQcPdSMMDAqUH64vfOo+b0Xkv4A=;
        b=X6mQEw68fJI9I+F5ryEPO86aGUit9pi9jbwAQmuAFiI24w7ot6tTkq0IJFMPq88j2y
         MthKguGUKoTyffrjjKuzzWnHWNTklWsXfUEted2RLegr4iNlf+rXIIJnZAfkb5PAb1Qm
         gOP7M2C4PIN9Yb7xQhPLfJPS0yg3n7ABFwn8+CcOmo7vny+d2p7TVBpZJKMy3PEjqqjR
         tV/OK2UKGz8JpPkMXYMLmylKSge8/AowKoueBtDUnxPA9ANf+VUWUmnY/HAfAvw0oM4n
         0xqWESWsgq3vIiEtGZ4XY/5mwoV788en52UAzj4Wv6v1TptBap6sqhXhjxPQvwcL0lJy
         dR9w==
X-Forwarded-Encrypted: i=1; AFNElJ+IE+BHOhi0m6zRZCSuccIaZ3GsUJgrhn8kKnwHTOJ38KevWOOYEj6gcfs1W9qBNwA3agDarwylXOs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1WVH49gwg4L5DcBvk9yFUhDsfj38j7qmSXOPYQrmzZnfDW6+K
	RnWnO9O+tEW2WGHhgOb40TlRfrj3UGvXNZJupiPUOdOYi/bFCcBjtlSUZR4CqzDApienHzWayLb
	zyCvNgDoZk4CSdnkfidP7k8mBUI68rY6aUIDOmEBayJ1eSdN9eBJ7xGItbJWmLgaRgyop
X-Gm-Gg: Acq92OEWNJBP5uK1l/N+26Zpe4DAPBCCZqHp9aKwBxOEQLTi96k1ne9CuBLur2Mb3fb
	PQxqTfXxC0nVQGBgDNkE+iJrqGWsKRLdof5VFmQ9/UXTE0tj3HKmpj/mbtNHle88dSkSz0uxa/F
	71uHnsGYkdbjZ98Nt3NHDjg96E6hqoigxVhyNyYq2dLbQQprAPdi07C71Ol1MbnG8M10ge3Wxew
	s6oMpc/nZUEZ0epYP2hg+YERp6LEsZTVWRvYQuttDBUZqpjIu/Fjq3wRUKbs/sTj9iiiq7qbxYU
	s23mghpbYSaNHG+KfGh2RrgCanU7YdeEcaDxry/UFK61LEKOrhPvxupGYRzXKtnmWF8hQKPwD3K
	fTprQBDr58k7XgTVQkc3A3RIAYvrkH8Zo62oXIQUMkRGk13LYS4SttDIvX4FrqnbLWcKieT5DEr
	qxO8uiWdcmr0fhC4mwedN9BfV/rurm8JO6/2xAmOv07vFJNZWuTY8=
X-Received: by 2002:a05:6a20:6a21:b0:3a3:472b:2e6a with SMTP id adf61e73a8af0-3b22e843edemr3802339637.18.1778842074568;
        Fri, 15 May 2026 03:47:54 -0700 (PDT)
X-Received: by 2002:a05:6a20:6a21:b0:3a3:472b:2e6a with SMTP id adf61e73a8af0-3b22e843edemr3802305637.18.1778842074098;
        Fri, 15 May 2026 03:47:54 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:47:53 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 15 May 2026 16:17:42 +0530
Subject: [PATCH 1/5] dt-bindings: phy: qcom,qusb2: Document ipq5210
 compatible
MIME-Version: 1.0
Message-Id: <20260515-usb2phy-v1-1-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: _-8t7oQM4xoHo69dQEM6MbtEV3Y2j8O0
X-Authority-Analysis: v=2.4 cv=GulyPE1C c=1 sm=1 tr=0 ts=6a06f9db cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=mYYFkqwxoXFK66vEoW0A:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX+Krz/6WNeMWo
 P6FrJq1C/w1svOc+8+TaYqV3d2tpyclIAhz6deXiIj/O5oCp34G+EEIA6InOiG1qDjGcGsyN63T
 kpJntembR4tQL6ayBZZY4kK+1ec9wSwQYI3q+y8E5vRih19/LShgPZx3BHz7LH3EC3fQjRVaZpA
 9wvDL7G2qkdzeb8IU/69ICh6qlQm9xC3ZsTxlalC5g/kH1Snd+oUhuNCIplY9U7mjG7Mn22gSes
 quby3GSt4Wr8sP4JJzPQX/eidxMn9srEOJAJ7dmpTF/Qw+zgwd/mjnev6N/+n44/5GzgI4kBixx
 ZBJez+59AwlsYMlOzWoR0FBGY/HI0S18eXDtcb0e3yZCOMrNuoGAXeQo+QSsSHEFHJP02pEyrly
 ysgslHFTJlur74z/hvrXLhTO72mfT3CX/cCsVagRrzlVmreKhyDizkl+BVR/oDOalmTL8ya+xo4
 dsdY8jKYwTDJGjY5KCQ==
X-Proofpoint-ORIG-GUID: _-8t7oQM4xoHo69dQEM6MbtEV3Y2j8O0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_034757_377706_B9ABADB3 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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

Document the compatible string used for the qusb2 phy in ipq5210.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..509cadd31adf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,ipq5210-qusb2-phy
               - qcom,ipq5424-qusb2-phy
               - qcom,ipq6018-qusb2-phy
               - qcom,ipq8074-qusb2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
