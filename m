Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F26EC02199
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 01:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mo4t0nPrj5k3TLnWjRxMlbErYGc7zoZ8Q5q4RZhU64s=; b=IvtELa2E9zJtAb
	dLvepGB3tdTPk2z82gPruV+3iIwVhfgtvF/sfLjrrEu4b7C9sw2NCW0BfKHW8AMbW5LKMVMflOFl5
	rtX2AMSPw7vtLwcidv00TBzDSF+nGpJLhzc0hZjdv7YFd3f27+2JhVTDk34npRmkbq7kHaUmNEK9O
	62xrIswuaRsWyuIUn+W0Pv674Kw/erXMxxVmL7DWJukN2ApByVpxCfmUydAYnJAhb1vi2GOftKMly
	gJBfNwXSTqNFR/z6YqfRRYPMUzKgA1aPrB5fXZDVh7Cs1bdKDWrdPI/Q7lYoKYyPf5fb3R5kTmaZP
	wbd9I/DRDINM89ZXbX9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgZsX-0000000Bpq2-2eVn;
	Sat, 08 Feb 2025 01:43:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgZsU-0000000Bppd-49hW
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 01:43:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517CYals007554
	for <linux-phy@lists.infradead.org>; Sat, 8 Feb 2025 01:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uvl2a0j7vqsq5LA3kTdIeYd/weJt9uMnmK28HOLRjek=; b=ZMVwTL2LkACuACMy
	ygKp3yW7CTUwiETtROhJy1HJUozpmgXNUUmgzvu402fofhhXAr3pG6ToO3GZbMB+
	alcJaTXvhr0VKr+MC3iI6nxwUrSBUHMa/ToyIlzVWtjyy9iFfDbO9prOa7sDEJ5q
	JKAyFsaX3Lnho06J2tlJh86hzqfHIaYyTHi94uHS9FlxBfIJd84Pceie5+itI16o
	zqJ9mrIxd8rdKBoac1w9TJl2cvFunfELroOQrtVZNrspGu/aQDlmGchmdBxdJAct
	ZmHYSAsKtmH0AV4AfNm4EnQcyfhlxVo1jlMKUoAuLzTGOM8dGb1/6VZYxPcPcbB+
	isOj/g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nja3sn65-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Feb 2025 01:43:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b700506e64so33158885a.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 17:43:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738979005; x=1739583805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uvl2a0j7vqsq5LA3kTdIeYd/weJt9uMnmK28HOLRjek=;
        b=chmN1dDk2pf46T3nFtbeuKn2wXb6dS3pF+w609XL4lClmcnUUDw4VM2tH7HSFi8n0t
         VF0e5LHoZwa2pnfTTCBrItrbjao5vEMA5WfRM29rN1PZNRsDjnOyu1hvWx3Qc0KvusWr
         h+23V0MWTYIVL3X0lIz5kZWgLTfGe7WsEB1PxVUJ1WCCAJaKjXa5CCym7eDEiIuXnPMs
         IDDjembX/S+csbgj4bamGF9wOMbrLYwWTvzPNE38EjvDHMTThWLiyJ4muwn/57Hb09SN
         qyfssDUV5BYAwWVwZvTg2pAQGmnjjv2e+wP/w/p9wnS1cEjMo/7ca6eA77UELvV/HtW+
         X1yg==
X-Forwarded-Encrypted: i=1; AJvYcCUb6weTEvgZP6VrcpAphSS8tzoxDY5BbEPoQOiZRfIWhPoTpDhdZLEEy21YmrbE+VnF/UuolRmU80w=@lists.infradead.org
X-Gm-Message-State: AOJu0YydJqXCtTp9Qrr7dIf/vlsH0GZ6vV88yqFicOijHbr0FavXS9Wx
	d5X9qPWH8Wl+cbCu+7GgpG53b53xfI9A08Bst43w8EETCWUNRa5t8XxZh38j6tnr2JY+Vd0EDBV
	/1pZmGUL0YQcpLcwPPNVHNvR87eGOnhywzBeyLiAq4DkoBy1j1K1ic51Cj0P0X+lv
X-Gm-Gg: ASbGncvXdTFt72qUs83AopFsihBFe4U+b/niXhvc3CFzNfDYV5i+k1T1Hw4rlzOAhoc
	mZpSyDjLCWPS0qvyk9eYtpu3Iib418tDVLmzIFuWwjg65xeyIhC8xW5kIQf2TZkOLgwBcQ88bJE
	8QP4Cx1Q8NEzZ7jED/NRgBINpmZhcvV4jCRSY5kZr8WHsWcXIDIUhgwwIPZsm0QgUe7hSJRO+VA
	ycPUp1psehTp8yC7cyApsOHWYOzTZVMsHqYGrX3nI/sA9924XrsjdiGj72yAfzCRBNZt34l8WH6
	8O2F0YbJ2abE9tutP/0NlxwD2ABiiQ4HglbNm/Yb5Rpi0gaaf2FoH52fUJg=
X-Received: by 2002:a05:620a:318e:b0:7b1:3bf8:b3c4 with SMTP id af79cd13be357-7c047afc65fmr327772085a.0.1738979004746;
        Fri, 07 Feb 2025 17:43:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8UTS+vVH26H8xLRB9dyiuCt4iajAYis4LHIkOKK04eLWDXnRv19j6gDsEybLesd/OnD2ezg==
X-Received: by 2002:a05:620a:318e:b0:7b1:3bf8:b3c4 with SMTP id af79cd13be357-7c047afc65fmr327770685a.0.1738979004410;
        Fri, 07 Feb 2025 17:43:24 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7b0a2sm3418731a12.22.2025.02.07.17.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 17:43:23 -0800 (PST)
Message-ID: <9368eaa3-f1f0-4581-9f18-24c2a6f8f5b3@oss.qualcomm.com>
Date: Sat, 8 Feb 2025 02:43:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
X-Proofpoint-GUID: wSaps2vTOKNSoD7LBOF2THGAJuwl61b3
X-Proofpoint-ORIG-GUID: wSaps2vTOKNSoD7LBOF2THGAJuwl61b3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_11,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 spamscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=925 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502080010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_174327_057074_AD62726F 
X-CRM114-Status: GOOD (  10.49  )
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

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Please also add this bit:

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3bbd7d18598e..1f79f2adb0a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -532,9 +532,9 @@ gcc: clock-controller@100000 {
                                 <0>,
                                 <&sleep_clk>,
                                 <0>,
-                                <0>,
-                                <0>,
-                                <0>,
+                                <&ufs_mem_phy 0>,
+                                <&ufs_mem_phy 1>,
+                                <&ufs_mem_phy 2>,
                                 <0>;
 
                        #clock-cells = <1>;


Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
