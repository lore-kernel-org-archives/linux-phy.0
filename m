Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D29EE208A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 10:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xx2kGSTeNAuwzZbS47U3OubAdriWO7Eh4p/vZpRNhu4=; b=UMjbfMIFeP/jaH
	YWsxyPCYb9E4n1GxUTMD63bgSyR9caZr2eV0Wc3TaAWFzGQ6cHRjqkWartQJrdhp2ydyNumQ2/Hya
	GcA2Ue6Os59c5wZNn0m1+ztL5mW3kHVIIWJm2AZ34eEZoNNGcCot+GxOD5vygYsGml7xUqJTPreRE
	EV6HIJp6BYNL5x6tgoma0+jO+9NGW99O8e3BT7Ll/lPhMbEjIhyp1sd1RnFpIw1bA5NP2Am2Ops/t
	aORp2/lD8vE90wcgp8WoK+IHKAX0uGzSvV//IOwbwRCAWcEMRcps5XgDlLZMQ8eK/US0U+agZliNj
	DDrO5I89LSZwX+6PqCTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJSV-0000000BCa7-0oZq;
	Fri, 06 Feb 2026 10:53:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJSR-0000000BCZo-45zb
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 10:53:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167Xqt22482148
	for <linux-phy@lists.infradead.org>; Fri, 6 Feb 2026 10:53:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l3AHMbFXpk+dKoC4YLpaH+pl/OddhSfAMGUwFFGZjyI=; b=PZOxhGmnhjfXx6s7
	yWW31Wy1ZyWnJNJa6u4hqaYk509KHn79ZSfhmPNPvjBvbgO5CoiAJhmo0IW9SLVz
	i+9kBFKHJDdmDVIvrbs8SJdkyu+fdnCrT+YXj1Pio506AVlQUlftlcO4+PHqZnna
	BjhP1NXZX5pQVZs9tWd4lzW4DSwSOpRrKAFBkOj6AUcj7yFEK8Loz/aswkjt0RAY
	MhBCFDerGWKThqCTpmhHZMSv20WgFMICYoiMuOHyAvttMn+lp26dPGaHoKUAatUc
	l0rhW2sYIIa83Q3WCvqr0eG278ph0Hff7le0dV0rtB7njiYb+I9fcuB5thQh+pIs
	tp0hhg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c170p2r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 10:53:03 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88880bc706cso7664276d6.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 02:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770375182; x=1770979982; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l3AHMbFXpk+dKoC4YLpaH+pl/OddhSfAMGUwFFGZjyI=;
        b=gCpCPZEfSqld0X4LQ/ngZah1gijEiZO8/2w0tgFOIo6nGP5HyueUxfh+kjQLO4YoEV
         uCPZoeXKjHEMEeXZtlW86dBy8oLYjkApocGaEH97oU0WuTSsMY/OqR/QWEtlsEhNTe0L
         QuPnndQEat0Vd+sCjbM9HtP+4EHYS4RS3R33mk4X3SERrJDkSMi/DdwyQ7ruRBzJt0IA
         jcQp73HrsxtKrbMTq5m7lU/6svdxzj/I5lxGR98/xTxEhrMiHDIh1BF4wwMEBpfiR6Bd
         T4ZECx5pbCgDI/GfydJRYeGSvRCmPi/3HYADEaKLEyJ1DlHSPDv2G/gfPtF8ZQ2eSyFB
         NbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770375182; x=1770979982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l3AHMbFXpk+dKoC4YLpaH+pl/OddhSfAMGUwFFGZjyI=;
        b=T2gNh/HBCb7VIkinMDXTEhDPN/pNmxJ6IXrGrE9QlC11cygHdqvOcglxInyXnW6GGp
         SP48G/kWHM8lwJbCJtv/BKchD4atEEZhbw/C1WWgusJ+WLtODmobCGLKYAUez3E5SOHS
         bxSqFc5uBSWhlWZtC+vNRPvDvKYiqjAQ4c95YCPYSseBebAraqoZcK/QLMf2uISryVFp
         At2SKx8/NJ+0MwePOQZVl8muE95gL7Zj9ywW/o1ZI6q989KqPqsKg42dpoFy0fL8Avzh
         Fonj+RbJlKAc1SiYXZmtySYtFRfcRJgtBafwiBDz4sciLBZgyarEqgaA/wAii81fr7kv
         E23Q==
X-Forwarded-Encrypted: i=1; AJvYcCUvnlOcBDY3Z2yT15g+BZhKKW12ExZOc9msfAW4eG44WKHAToOjiCoyRVRyU6Lo6bJhSw8xWmSlyI8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5g3AYgkUl45RCSjSrWcHV351myu+BTY3fJxO0iwIPzVsHZHZr
	oK++DJDNLCgyPSE21Um/IN0KZY8SwMm0WwRMJTyu6NygTsgMlH3nCsTf+HSgHvCoTdA/WSaoAjz
	xIrjUlOXEuE6eiqHkaeHZHA6l+t15dQ+/NCCvg++ODojU6Ppyq1aATZrk9DxHSlezRvcp
X-Gm-Gg: AZuq6aIsYIrxm03v4Du/QsCCDmFGWeZYQb7bwU6CwwtqfXMCjS7XwngQ0eIDtih95s5
	CTSnPfvK5jFX2BUbtmfL41Z0gR5wQsLkfNUADnBV5wZjTySV8gSNfNvtMY86Wr6hKsuQAHW6Mbs
	cGHNKu4rrVXxqNYLgjdlsH3KDjBEBpzkzaKHDG3IFGT7dR/LatgxeEMqMbfWjZNiN/9GNL50AV7
	zhzbKxbqP1gBdH/o/pF/8/3IrpCmVq3QpqO+k/eEW8DYoeehwLXUs/fohiEaHuMA4uwo2Jar7ac
	KUuFIGaEnaojrzgqIerpyu8xswughb+ELz7w2+AmqUog7FDJK86CVa+9tBZ2hT2OgwkDPU9pVgS
	KUwnfwY+bBV29FZDkhCE4+Jao219R6L031xo7E7HyQ8Gm9KLxGtx+m/l0RH9eSGo3AJc=
X-Received: by 2002:a05:6214:4e04:b0:894:ae65:5ba5 with SMTP id 6a1803df08f44-8953c7aa00cmr23503236d6.2.1770375182497;
        Fri, 06 Feb 2026 02:53:02 -0800 (PST)
X-Received: by 2002:a05:6214:4e04:b0:894:ae65:5ba5 with SMTP id 6a1803df08f44-8953c7aa00cmr23503136d6.2.1770375182153;
        Fri, 06 Feb 2026 02:53:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6598400f3eesm421672a12.19.2026.02.06.02.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 02:53:01 -0800 (PST)
Message-ID: <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 11:52:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
X-Proofpoint-GUID: WK4BOcTVz5nmaD_2Sa5B331J4Pp1IAy5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NCBTYWx0ZWRfX2ztwEvMbJGbV
 croZmAHvTvvpJfwBG2tuenYc/ZSNO6BUrF2H/BeMIF6mCL20T9Cm0fh5nDXjZBKZSbsaZpk4NIs
 i4Wv4/7ZsUfnmJCjsClFXAcg5b+YZSxNuvxdmoJHpx50ZOSznBXuwRc+usSheUvc1h8rVr3R04n
 lOiQMBg72O4G9KAU6EcPITlxjt5c6ua6gwSCcdu2W1CzwyrWfxUYKh14epRvMG09ujQ0NZnl/tu
 IWHS/rKvTZOEziY8GTuiNSQpnKZKzgLYzwD38BxnSIL2gwSwXYLZaHPNB8qSd6ubvUzOhIAIQpM
 kN3G1YTex8MnC7+aDxs4t+6wIPvk/GYWan2fkNmQbzvaqbssGois4A3BWsJRpjOT9rEVe7ov6DY
 HofGYOz+TKW0dI3B8jVJtxo5bTZA7qbw1JBBUAXB99k03OaEqcq+8N8cvmMA899oRAhwGsObmM2
 dUHxsots0Ce7ftDJ55w==
X-Proofpoint-ORIG-GUID: WK4BOcTVz5nmaD_2Sa5B331J4Pp1IAy5
X-Authority-Analysis: v=2.4 cv=E7TAZKdl c=1 sm=1 tr=0 ts=6985c80f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=pDKpTZyYLimyg1k4smoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_025304_020772_8098B41B 
X-CRM114-Status: UNSURE (   9.26  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMi81LzI2IDEwOjIwIEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gSW50cm9kdWNlIHRoZSBj
b21fbGRvX2NvbmZpZyBjYWxsYmFjayB0byBzdXBwb3J0IHBlcuKAkVBIWSBMRE8KPiBjb25maWd1
cmF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9z
cy5xdWFsY29tbS5jb20+Cj4gLS0tCgpbLi4uXQoKPiArc3RhdGljIGludCBxY29tX2VkcF9sZG9f
Y29uZmlnX3Y0KGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKQo+ICt7Cj4gKwljb25zdCBzdHJ1
Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJmVkcC0+ZHBfb3B0czsKPiArCXUz
MiBsZG9fY29uZmlnOwo+ICsKPiArCWlmICghZWRwLT5pc19lZHApCj4gKwkJbGRvX2NvbmZpZyA9
IDB4MDsKPiArCWVsc2UgaWYgKGRwX29wdHMtPmxpbmtfcmF0ZSA8PSAyNzAwKQo+ICsJCWxkb19j
b25maWcgPSAweEMxOwoKbG93ZXJjYXNlIGhleCwgcGxlYXNlCgo+ICsJZWxzZQo+ICsJCWxkb19j
b25maWcgPSAweDgxOwo+ICsKPiArCXdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4MCArIFRYbl9M
RE9fQ09ORklHKTsKPiArCXdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4MSArIFRYbl9MRE9fQ09O
RklHKTsKCnR4MSBzaG91bGQgYmUgZHBfb3BzLT5sYW5lcyA/IDIgOiBsZG9fY29uZmlnIDogMHgw
MCwgaW4gYWxsIGNhc2VzLApJIGJlbGlldmUKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
