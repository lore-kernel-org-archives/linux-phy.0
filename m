Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC76FCD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 00:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2mOunjwLBirfCz9FXHmHpZS0OAB+fxjXU/587eXCsg=; b=GLYEQZDeGrvi7f
	dz7hRJRoHsxviDyYL4SV+UvaBJlwk/80Ykli+HQAlcXij/5Aiwv105mpX3T0VNxMjQ5FuTmpKxCxm
	8AwUz67AfJCHC+LtUlRjcnhtRvjjlGDt5ONIWNotLEXNJbpzn4VVnylIoz9CqkiB89rEgYWFoR9V/
	z5masfC5M6P+3JpqqGDuevzvqYbPZIZrQ+qUwTLzW337NDVw8rW51HFgYq6WgPirGwusqnPpu9wd9
	1PRcCIvneT28bZdq/z1W9ZaTYBiQ7+suTB+NOdSwnp6ss7wPrBWLD5NJ3EH9Jhv/g+B+Q8/5/RyZ6
	EjUWih5OzVXBGPAvv93Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPg-00000006I0X-1M9C;
	Thu, 21 May 2026 00:37:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPd-00000006Hz9-2sWQ
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 00:37:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KLEGHX1798618
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZitX75AVxgG
	uWGiVafC3GvCVVrQgyZQFWsUqIo6AsA4=; b=MJQzCC9uiqc8UeqSu6hBkDkzW8z
	vMpfXecaBT8O+Z2unJsqYd53WFdDNjf0yvPvSt2lc5Jc0cA7HS39EpnvHAYei+Vv
	ToRM8y06afkNoW9RQV+ckYvOPVOEaAVa/yK7BIDAhif6SREQyJqkCVfyBR0kPME2
	UQX/it1lwZyEfXPRw86AGhmmiFs3wmR2inHWoNLhANr7UvNcFxUKYp2Hq+TEqUV6
	h6XG63mCc4PlYqU6K6Z8X4EFR9VwgqJBShzFKgjOZ14r/dyrTZLuNUxzl/0wOXZA
	9egAiuDYoWQYDFAJuSXuHaQR2C9opgL5+xjxO2Cxck62mRWK+YlZGTkUjIA==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9dxu2cgk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:21 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7bf0b47d2e2so108196237b3.3
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 17:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779323840; x=1779928640; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZitX75AVxgGuWGiVafC3GvCVVrQgyZQFWsUqIo6AsA4=;
        b=jmtp6OMq5UyTgRa5CbF/JFt6YssXC3jQREP2jfL4eLVdTBj7qX3A+B3S0H9Y6wLThH
         vJcJWhEwyhH4QwHW0FArcnpDKAYnIQUHIxztWYnJkR6jTERxwpsK7+IOsVm9xg0KhGWA
         wsQUUVgqhkchctG6TuHy/jF5+nmhnGgh6sFMNwssdfHOGYxWyaXciMDre7pytWn3ch0K
         pxWNlow5p+Eu4wskT22iBwATxiyooSyk1hKBHedtBigk6leOApjCsucMGcfRXl38O0cS
         6wdIyWHi/uSQPCsiARRnNYJ7QLVdP5zASd6WCEONd4RvOyqI3+9VTYwWZqsHLWuJtzUU
         i3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779323840; x=1779928640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZitX75AVxgGuWGiVafC3GvCVVrQgyZQFWsUqIo6AsA4=;
        b=fWox16r6F1d0Jk0mKVR/886agP+K4IuMZuetpe/fv9ywkfPRyY90CM6EKlU1c7YQuY
         vE8Eri3KBQ0y30bPs86GNnf1hHWw+pH4/KqASt450apsoi+iQOOVlXpv3p2a/kyAYL61
         bfVnNssj/J9sXBW2QAE71xlf93mh/BviHzSVhjQWHbKraogow9C+j60ZbUlZlfraNh9s
         keHtQTZ0CxXzymzP8lqMUKiP/rqO0s3a6dC9nDCKSnKkPOp0norYBKaLNDUlqnIDPqoV
         7X/ZtfSUZtfIert0oUHCk72sijZJkBreU9fDKQ4+HRbaXMJoZEYq99Jx/obd5VqEmXYU
         Lh9Q==
X-Forwarded-Encrypted: i=1; AFNElJ9UuT4v7B4MCnueU36Hk/w3fF2+A08gStJS13ZMpqh46n91wYCRo8nZdkRLP8NENlzxYJUfV7C4pvk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8WvY/DWW14Ta8UblZY+aLPWyZ9Yq88NPe6GwNHSo5w2xmHh0n
	60p+a8qi0/OTc0VgHCpHoH7dn4X5UysWubxnB163gCKWCUEoZUuQQE1k0t1ExjZy+9Fs+J9md07
	cnE+5YNGf8wEjqukOFsoyjiLdgSblMPCe6h6G8XPEKJIhHpy4uPhU59yI/5hQn9cOZtOL
X-Gm-Gg: Acq92OHyEFpQKZG3z1F68k17BrIcvo7CsSfqOrFWo2oeaeqdw0X/fVL3Hbwwpd/ojsN
	CEqDICnaUhDbQZb9J6rXutnkHagRp63XD3LDT5RVKQfvGQK/CAWdhPicSkLUMYFXtvuvxdhM04W
	DVj7SJEVpi35tjMVdcip9n3Dd0IaZVJ0dbjNlKp186mIny+F6C2ok6sodmdAg/vjrSOzNYQGHQy
	dw8reXLRxlshDkZDOIXEu5gMBUoAHtBJsFakoqpjnJicMLyjQVWUlDNtZam9BI8vhLdqVrNJwYL
	Gutl5uBRuOZUuAuyRqMyrbhIGOSkGDXMy9MsUIeCPwGKkVnzynBLuyOnMaT8mF1tSiA7dDmTuhT
	ERiXG3Zl+HM5Qb4iNlNy6blspW5FYIjVlYSXop9dwglktSsTqoxmSz1yrXgIMDGR6Fxh020ISGO
	k5OmYgDxP6kcynNTM=
X-Received: by 2002:a05:690c:e07:b0:7bd:98cc:a675 with SMTP id 00721157ae682-7d20dcf95efmr7291907b3.47.1779323840341;
        Wed, 20 May 2026 17:37:20 -0700 (PDT)
X-Received: by 2002:a05:690c:e07:b0:7bd:98cc:a675 with SMTP id 00721157ae682-7d20dcf95efmr7291487b3.47.1779323839867;
        Wed, 20 May 2026 17:37:19 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60545717b3.10.2026.05.20.17.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 17:37:19 -0700 (PDT)
From: Michael Scott <mike.scott@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org,
        Michael Scott <mike.scott@oss.qualcomm.com>, stable@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
Date: Wed, 20 May 2026 17:36:14 -0700
Message-ID: <20260521003615.1260844-4-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
References: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwMyBTYWx0ZWRfX6ziz81FuwHNU
 mc1PXMfdwX8uxZI9Bu8GoLNEddjo044OUof0zw9t1bLJoBnknEOyNch+vOUoDe6aQw0AmC2uobY
 ullXSwOZobu476wCzObgxSezELxiPOALkceGwRW/MTVuCsUrX1x8td0vKXz5Xj2wv6MohS3LzvG
 SyDKpBsKi1fjHGeohnH5s15bKsj2VHV19N1wpQ9i71PaC5NwWniMX6R5qwe0G/aM59inPf29ebk
 p7GJRpnXOwEBTVMAAq3PTXs09q6Twf0GjnHbB5a+HKeCmyg8nAEXbVBfFXQyhBsfgZqaN92XVhJ
 0428wZT9U20qxHlKErLhgFV0/1PZRzh2nOq32cd6CfkWGrd98LF3KEZwHcFQJrko+qHCDgQ4P2Q
 e4mY+8Q9+3B00uBxDZGT5T2NFFuVdpfA+50M2/DwIA2uppMv2efHcWcaM/1+7d1JdsveuGa8FRf
 OMAMvoBz5X1gE4Er8OQ==
X-Authority-Analysis: v=2.4 cv=Zckt8MVA c=1 sm=1 tr=0 ts=6a0e53c1 cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=CbK1FIr4-MOfYfEwsVEA:9 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-GUID: 9ko2xnEV5iNdL9QtXwFp1h2oAU-Exu2D
X-Proofpoint-ORIG-GUID: 9ko2xnEV5iNdL9QtXwFp1h2oAU-Exu2D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 phishscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_173721_729074_CA992614 
X-CRM114-Status: GOOD (  13.95  )
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

The l12b and l15b supplies are used by components that are not (fully)
described (and some never will be) and must never be disabled.

Mark the regulators as always-on to prevent them from being disabled,
for example, when consumers probe defer or suspend.

Note that these supplies currently have no consumers described in
mainline for dell-thena beyond the audio codec (vdd-buck/vdd-rxtx/
vdd-io on wcd938x), which can release them when the codec goes idle.
The board-level gpio-fixed regulators that feed the Type-C retimer's
VDDIO and other rails are not described with a vin-supply link, so
the kernel cannot keep their parent LDOs alive on its own.

This mirrors the same change Johan Hovold applied to every other
X1E80100 board in a March 2025 series; commit 63169c07d740
("arm64: dts: qcom: x1e80100-dell-xps13-9345: mark l12b and l15b always-on")
is representative. The dell-thena board file was introduced four months
later and did not inherit that change; this patch closes the gap.

Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
Cc: stable@vger.kernel.org
Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
index 96e7a18366dc..d93b704872b5 100644
--- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
@@ -589,6 +589,7 @@ vreg_l12b_1p2: ldo12 {
 			regulator-min-microvolt = <1200000>;
 			regulator-max-microvolt = <1200000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
 		};
 
 		vreg_l13b_3p0: ldo13 {
@@ -610,6 +611,7 @@ vreg_l15b_1p8: ldo15 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
 		};
 	};
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
