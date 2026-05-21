Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02144CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 01:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9p/YgkptqqC4oTSWnn09vLVALllvOM6fWq6VjiQTu2s=; b=SZ87b+hwZb624/
	nRFWgXm6JcHAsRjQyKaZ6bUFI0oWLHPbBwyJes46Zycugi0Qhf3r4/gQn24Mq3fimwdhhM+Z9z4hv
	ip2Y7S9BPMvexGdaH3gs7wH6LCfWdp7buk73KP8zxN04RNMihsJJZeITIc4rp4PhiVgDVSgsuGWYy
	mQM5Sf8VpZ3valJCVUEJFXb1G1ChXJCSSRNG1cKwyfs4TvGBSE6ES6hOP4pr0szpx+9YeTxwo1gcC
	pVBT8pVfDvG2YaEqGSZR5vgdJZ3lIZfBG+oUsXhAZ8FpuC7Gd5TA7gWr877zQ2JgyuQXyxUhOvtCj
	k/nGM9EOwPy6ikUxE13A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvI-00000006LMa-2iR4;
	Thu, 21 May 2026 01:10:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvF-00000006LLg-3pi6
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 01:10:03 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KGPDGP1178167
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:10:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6dRmKU+5SKA
	eTGqRwOTPOTFNGFIlyQSi7HHIupFI5YQ=; b=RvtUmOFagx+eHfpxxq6rjUTfilI
	euKm7aBxgbzV3OT0CzQHG41jKBf3tmXSeJpOqcbEkZRVWNEE68GMiOWAf5UpvPC4
	Y4DC72ITFVnisxFwPmHcGC3u7MTborwBg0CjY67UV8ox6E7Yzx7mv8/MAAwLtiFJ
	jzTTE0qaDui360rDvUh5uIsVP/gPkCK5KFRAc5am9HodzF091HDqb+ZbOzsOvNJZ
	Jy1i//VZW11+brqSO4IDNkclNsHarFAwFi5iQWgXxPwt/UEq99n4n9GM7qYdP+oc
	rq2Eju3JxMo4cejU+UQ1kWXaQUbAuAtTKpRszrjajfRwCZlysDM+wWP9VHg==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ap6u9bc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:10:01 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7c9e610f273so74510527b3.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 18:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779325800; x=1779930600; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6dRmKU+5SKAeTGqRwOTPOTFNGFIlyQSi7HHIupFI5YQ=;
        b=MhJejjuINgj6mgW1JtL9mCOKge9f72IHM0hwcDRUuQy485GVNlGokuGZHTMePu149S
         /i8BZWMZUDjeNsGneyZztsgO6XvPkKISqClPDIupI8vaMnZ5G2Szk4N768OFSkn1sBG9
         yqN3DhyzcRHD9z5AEqvJGY4hAfVLXo/E6E5Slk2I154omxIkEgu6R+WvlAeWP6KqNGKe
         S6p4ywpNe6Zb/JaYWojNiQP037VhqGv6KUox6RmTYAnMizEwLXCnDhJbvqBHE0VBos18
         LnqVJKebWmuwKRH9B/79o8fPcTZ+65FTMxn76wCqD+Al478P2ZThfkhNj6wkBv2Q1oWI
         B58Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325800; x=1779930600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6dRmKU+5SKAeTGqRwOTPOTFNGFIlyQSi7HHIupFI5YQ=;
        b=VeJgJLWDw84ynnkUr8MWM+qscsoDES5Zc7pGnr9bbsDJP55YZ06UmkFuq3VE4ra8/0
         Izo46k5wIqtDqYaTWWEtoqUoedxsh6gueN2aoHl5djfLxoX3TBrxnRaPBo1aUsSigrSb
         OcUemDV+VPCLlkoWcDeReD7U5N2BKLgBHsWP2C34MS+y/nuvfiG5u+kZPOiUMGh8OOj/
         kh84voIQ7WYa7Nk4gaqXTNM8JpPx4xIhT1uiTLxoZZbxEA2sg+Rd1G/yWJKc3Q1bwW98
         Op3mX1/+VE91TYxMfR/ZR/KXKkAzLXmaJeEnBqSu+SHlRF6zFaeiteIWhnIsTikT2YkF
         93Pg==
X-Forwarded-Encrypted: i=1; AFNElJ9Mtfh6mUbh+V8gPi/nJggtkagwF6mokLnWOvxCCo+dD40VZuuZvwcyD5fElpFRJWbBvzDVBTiHfCs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzwu+LG38tYJm7bhIccXuh4RVtF6yLpa6QsKWfXaQH1MUxgK0JW
	tVxhQRb7B03yBLLxJ300hPT8mmYU2RM/hCAeljo4tlkFplfaKGqUEN0KxlywpfqpchanfyNWRzi
	PMj4GLAp/a8Kenu4RYewys939deV2C5S9ajUfCjh22lfeeztp1cGpOEKIqWW07ADhJluC
X-Gm-Gg: Acq92OHjQmpAK2llE97Cqnhzsm808tiF64L60/wH9wZcogRJszPVNlyJsrWIlZ071/M
	nDFYe/TPx+unEqK0iqwJ2/7L7XgVuV8bQyuZ0mPX25Yomh4rOTCa+e/7ZwTyDL3xoPBIed8UAYf
	G9rO1lzIbbS3x6918C+S6f8WraIj7/MZd821A99GkbRw4REopmnihNZr9OPu0AWusLqaqgOUwCe
	IagssBT/MYpk5lzVz6ac2cXZ2jEoES64C4BHQz547XXfMI2LOdELZqvpCmT31xEvrnuXs8xsmgK
	elc0M5a2waki7Eb54a2ZbtXLxqDOinc48KpPeSaWGgRZu6oWgw4U02cqiZzgXy2ySU0UE93PA6R
	2v4z7DlcqTOpE0pN3aZYcrLElNsY2zV052NOWShfbqo6bLoUQ6ymDmlL98fBa4N439AcygfrwnY
	vXFbC6vgHq9xf/ITo=
X-Received: by 2002:a05:690c:9990:b0:7bf:b4a:179b with SMTP id 00721157ae682-7d20d50e192mr7151227b3.18.1779325800436;
        Wed, 20 May 2026 18:10:00 -0700 (PDT)
X-Received: by 2002:a05:690c:9990:b0:7bf:b4a:179b with SMTP id 00721157ae682-7d20d50e192mr7150837b3.18.1779325800058;
        Wed, 20 May 2026 18:10:00 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60851307b3.10.2026.05.20.18.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 18:09:59 -0700 (PDT)
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
Subject: [PATCH v2 3/4] arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
Date: Wed, 20 May 2026 18:09:34 -0700
Message-ID: <20260521010935.1333494-4-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: ZgXPMkCuESZXeiSfZF7_4sI1M1jpDWcq
X-Proofpoint-ORIG-GUID: ZgXPMkCuESZXeiSfZF7_4sI1M1jpDWcq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwOCBTYWx0ZWRfXzSjx9UrrWGWu
 dGyEY8+aEPGigcyCltbEfVKUaswfyV/10DcQLL0EmXbkeQXhDYROv+SwrRdj7cxuXmV1N9X2/yd
 bEWpQm4RgVsbWvw0W3gHhxB9kzUSad6mGTRpOv/1Z94Ume0VhU3AFOZ1I3ul2uEHaZ8jvNEt5xQ
 gaQfjirkH6mjnXmcFu0OsbD00untjaEQvW0/vM8gBWlSlPFB09d1cyIjcNlCjgAxkpkj4C5Mx2L
 Ya4uyt1YDWJ1OrMF1NevnVocN6sKhiemxfim4Bu8tkj+s26tIl6f2jPRDQMCe/BbxPKzaxjSrZ5
 8B2T6z8li6WfjckExaTYkEQaCNaiI1H/ulFeBZftqaQ2MLme2NudvgBk5wIpTqqH20oOexV1vS1
 XQnOUXOxGoPoroZ1SmOyG320D551iEfJFvdii29y+qsb4i6ijl3ocF0E53dG5b2YH5pkrbMgdes
 AmnTIifXBDoI/PIFOlw==
X-Authority-Analysis: v=2.4 cv=FesHAp+6 c=1 sm=1 tr=0 ts=6a0e5b69 cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=CbK1FIr4-MOfYfEwsVEA:9 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_181001_963935_ECF54A9A 
X-CRM114-Status: GOOD (  13.71  )
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
index db291730130c..d6de4da02dcd 100644
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
