Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B260CA0FF9
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 15:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Evfj/KNt7YWfJDYAeD0H2mHB58SJUAbuL0VVnF9FqQA=; b=AzTsxxGmZ3kNrp
	S4KT716S80Xbj+vbEKCphbhDqiYbFd1eRcYMNahQaWEXdfgaXuBMGBpSxNCz7uZVu5mmFH7sGMUE7
	aDbrxSyRZyPdGggvgAnOeUSbHM7eOyWXY+UODuMQYLwPwa5iXJgDXJM1/sRWYRbcqleeDoHxpp72A
	irsA23uZMjFXmPqotlyWNEPs9zzioXMO5+OQOxgVwa05+jYhIVNWqKMzf+FLrNQngaXruZVguwHYC
	UvTUiKAtvbPjzwJIeH2ecDJLzHaHFGDIoStcCwZYMzR+kw/y9jhc/N5P6mAEFr2U992Xrtt+SN87W
	r8Ale4IQbP9qSu6dg6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIQh-0000000G0zg-2kya;
	Wed, 27 Aug 2025 15:51:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urFBy-0000000FPiF-2OuF
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 12:23:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kCVK003110
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:23:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yg5rxRbbc1HilhImNhc6AceAQ1YLgYvqFXETiddrEsM=; b=F1xRJG/Y43/PUj4n
	2qa33XazZeg/c6iTHvg2mveoPws0W9aCxxaPfgCQHoJOFROgsYN4F1U9ntwmkdEs
	ejtjAMp47VKEnVdkVCVTbAASVSZo310nWe7KM9li9tnBLvITVDNXRx+h50mpxVp5
	EcNJyo8aEmNtA21jmv8xTQ8T2+5ONunGoVzdtY1EnM8QzmZofYH5nE5M6V8jx/6z
	KtTuM7OIgpaN4XadNDLoLxMlZgOOr3gOdzex1F0mWU4l2dm1fx9jxpQG9nLxMop9
	tZPVbgzMXcRA0ksKoEDUzxEZEY4j8Qs5AE4JSiVKHC0nTyhOg4NWJs4RTobyDw7E
	10phqA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6x8cnyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:23:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b474310a516so1335234a12.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 05:23:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756297433; x=1756902233;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Yg5rxRbbc1HilhImNhc6AceAQ1YLgYvqFXETiddrEsM=;
        b=KlwpTI3SHj8mbJ7+w+WQloYbE7CJAsD+8y60UY9Isig6UDu92f7aX9Tv7jygYbd75X
         BpdN/+4b/UNPSlJItIkb296UlHWxrUQ/CXmg7N50oLaZaigiRL5WzDbQrlvTwrTzBGdi
         K4DEz+W00njvU5COQ0zoDNQgD2nJTMqymMGYX7HA1jI5OxdWcd0P04nuVnI90rBOIn2R
         +D5t2HTlBcqUr1JiFkqffGoFgs2dJZbdPJad1U0GYqP8rQaeuweDhGpTYp3mT3eZ3jK9
         kWtnwSehbiFadqHXTw37UGWpWrBUVEur6ZqdnDUkJ2qxBvwNz/jLk0p3TKj5MB9XfGjc
         zCyg==
X-Forwarded-Encrypted: i=1; AJvYcCWx1JNBSf5S2KT4brWj+ZHW7MnL5b/W6/Es6+YrSOx2TRU5e6xvy3UPbNfdlcnOnUcUqPJigKJ/jLc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlGdBY8VLX0ZuWobErCjD9em1dMgPloOB/PVq3jmSNrX2S3SgC
	PaOXYtTNk86IX2FTis7WoWvOh+xw9FY2fAOGfS8bYlRsWpw0MPk3KmcRuD8OdvtqVkZk8oF4c4O
	zxg9dOTb+NmMy+PzlbT+DdS1f2IVSScLxO1+o20TqjjkSHm1wbpxDRO0FGmgLFHIx12ud
X-Gm-Gg: ASbGnctcZp0l6huAcvigndXYoNnRXjfI1dj0yrKmBiPzywoKqoUwO7iH0xwVcI16bVA
	+IPiXuCF6WJnaq9TcfABAm75fjXcQPvzHOIw/BlNvJAakR9YkuCYEIz7HUOQvudyhzcti3oHedu
	XwS0Q9yxBoz/Jk1oXUwJi93nNCJCKFeo3DcB8c7ZgXUAIF9C+CK3CtAC5QCkF0CtrQwofPdKahK
	2SgyA40lMLW0P9wa5hzFmBxLmEqJE5zCYxSbW3SVLqrWtLJ0vnfhapt3bwz6tf/ABFrG7tH0374
	B618X9tjFZjJxW2iPHMIZr+QA6MagKDR3s4N52TA/rA2BP+7JYNDd0KcSqH3k41ov2ucD6whxjb
	dqiY9jGyWvQa+9SMA+uiygnnQ0ZHk6Q==
X-Received: by 2002:a05:6a20:3c90:b0:1ee:d621:3c3f with SMTP id adf61e73a8af0-24340813412mr15976472637.0.1756297432951;
        Wed, 27 Aug 2025 05:23:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq4Ue3miEW/c4T5E12xCiOE3p54Gi40oJLlOOke+fWNSMS7NYIwTRSwIrKoAICZzp9mEFDsA==
X-Received: by 2002:a05:6a20:3c90:b0:1ee:d621:3c3f with SMTP id adf61e73a8af0-24340813412mr15976433637.0.1756297432356;
        Wed, 27 Aug 2025 05:23:52 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7720af250cdsm1392821b3a.90.2025.08.27.05.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 05:23:51 -0700 (PDT)
Message-ID: <08997fc3-8175-4638-96ea-ac15ad20160c@oss.qualcomm.com>
Date: Wed, 27 Aug 2025 20:23:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/14] phy: qcom: qmp-usbc: Add TCSR parsing and USB/DP
 mode mutex handling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
 <i4rc5siu4q2o4sjk3j4bex7b7qdrs26y6lxsfnike7e7kqdva3@xddrd7vowtlb>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <i4rc5siu4q2o4sjk3j4bex7b7qdrs26y6lxsfnike7e7kqdva3@xddrd7vowtlb>
X-Proofpoint-ORIG-GUID: bAzNqkXup2Kbl26haaEW3CUT_zN9vd7D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0NCBTYWx0ZWRfX10Ukqying4Q5
 sS9gH3KnBhQbrq+qDWQ6e5ZZ0ByzhpZD2rfLuBN+17SPoYgo0eHUqQTr0SFSy1HDcp2bKAAF5O6
 KmL0/mpwNUQwpigPKaNM2hSJhLu2EjtbGZJbbAofgSd/L5bi7pSqd4yGFeWzCxx3Nrmo69ZppaZ
 woxcjy93YHHSYrhXC77M/ZUsVXCNCrxoROpf9Ic6XQxWDEUNnp81EydtRejrnikqlATB+dBB+eP
 gq4x6MLUMLB6abI9AOArSCJP9is4//eLY5ksyksQOJojFb2D1fxuWJRnRhBffxfhK4/CzFUVyFc
 G9+rgaLGjcx7CbAWy8qcsh67t7s3i0SCRwa06vLlmPYT8XkA+YeG890EB5tTh2l5Z9UcyE6i3ew
 WrC1ur+M
X-Proofpoint-GUID: bAzNqkXup2Kbl26haaEW3CUT_zN9vd7D
X-Authority-Analysis: v=2.4 cv=Ep/SrTcA c=1 sm=1 tr=0 ts=68aef8d9 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=-nZFuMMc53900W69ytMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_052354_660376_40CA1347 
X-CRM114-Status: GOOD (  24.23  )
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

Ck9uIDgvMjAvMjAyNSA3OjI0IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjUyUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBQ
YXJzZSBUQ1NSIHJlZ2lzdGVycyB0byBzdXBwb3J0IERQIG1vZGUgc2lnbmFsaW5nIHZpYSBkcF9w
aHlfbW9kZV9yZWcuCj4+IEludHJvZHVjZSBtdXR1YWwgZXhjbHVzaW9uIGJldHdlZW4gVVNCIGFu
ZCBEUCBQSFkgbW9kZXMgdG8gcHJldmVudAo+PiBzaW11bHRhbmVvdXMgYWN0aXZhdGlvbi4gQWxz
byB1cGRhdGUgY29tX2luaXQvY29tX2V4aXQgdG8gcmVmbGVjdCBEUAo+PiBtb2RlIGluaXRpYWxp
emF0aW9uIGFuZCBjbGVhbnVwLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlh
bmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdXNiYy5jIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2Jj
LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jCj4+IGluZGV4IGEx
NDk1YTIwMjljZjAzOGJiNjVjMzZlNDJkMGE0ZjYzM2U1NDQ1NTguLjgyMTM5ODY1M2JlZjIzZTE5
MTVkOWQzYTNhMjk1MGIwYmZiZWZiOWEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC11c2JjLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVzYmMuYwo+PiBAQCAtNjc0LDcgKzY3NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcW1wX3BoeV9jZmcgcWNzNjE1X3VzYjNkcF9waHlfY2ZnID0gewo+PiAgCS5udW1fdnJlZ3MJ
CT0gQVJSQVlfU0laRShxbXBfcGh5X3VzYmRwX3ZyZWdfbCksCj4+ICB9Owo+PiAgCj4+IC1zdGF0
aWMgaW50IHFtcF91c2JjX2NvbV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPj4gK3N0YXRpYyBpbnQg
cW1wX3VzYmNfY29tX2luaXQoc3RydWN0IHBoeSAqcGh5LCBib29sIGlzX2RwKQo+PiAgewo+PiAg
CXN0cnVjdCBxbXBfdXNiYyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4+ICAJY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPj4gQEAgLTcwNCwxNSArNzA0LDIw
IEBAIHN0YXRpYyBpbnQgcW1wX3VzYmNfY29tX2luaXQoc3RydWN0IHBoeSAqcGh5KQo+PiAgCWlm
IChyZXQpCj4+ICAJCWdvdG8gZXJyX2Fzc2VydF9yZXNldDsKPj4gIAo+PiAtCXFwaHlfc2V0Yml0
cyhwY3MsIGNmZy0+cmVnc1tRUEhZX1BDU19QT1dFUl9ET1dOX0NPTlRST0xdLCBTV19QV1JETik7
Cj4+ICsJaWYgKCFpc19kcCkgewo+PiArCQlxcGh5X3NldGJpdHMocGNzLCBjZmctPnJlZ3NbUVBI
WV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MXSwgU1dfUFdSRE4pOwo+IFdoeT8gRG9uJ3Qgd2UgbmVl
ZCB0byBwcm9ncmFtIHRob3NlIGJpdHMgZm9yIERQIFBIWSB0b28/Cj4KPiBJZiBub3QsIG1vdmUg
dGhlbSB0byBVU0IgaW5pdCBjYWxsLgoKCkZvciB0aGVzZSBVU0IzRFAgUEhZIHNlcmllcywgVVNC
IHJlZ2lzdGVycyBpbiBwY3NfbWlzYyB3aWxsIGRvbuKAmXQgYWZmZWN0IERQLsKgCgpJ4oCZbGwg
bW92ZSB0aGVtIHRvIFVTQiBpbml0IGNhbGwuCgoKPj4gIAo+PiAgI2RlZmluZSBTV19QT1JUU0VM
RUNUX1ZBTAkJCUJJVCgwKQo+PiAgI2RlZmluZSBTV19QT1JUU0VMRUNUX01VWAkJCUJJVCgxKQo+
PiAtCS8qIFVzZSBzb2Z0d2FyZSBiYXNlZCBwb3J0IHNlbGVjdCBhbmQgc3dpdGNoIG9uIHR5cGVj
IG9yaWVudGF0aW9uICovCj4+IC0JdmFsID0gU1dfUE9SVFNFTEVDVF9NVVg7Cj4+IC0JaWYgKHFt
cC0+b3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSkKPj4gLQkJdmFsIHw9
IFNXX1BPUlRTRUxFQ1RfVkFMOwo+PiAtCXdyaXRlbCh2YWwsIHFtcC0+cGNzX21pc2MpOwo+PiAr
CQkvKiBVc2Ugc29mdHdhcmUgYmFzZWQgcG9ydCBzZWxlY3QgYW5kIHN3aXRjaCBvbiB0eXBlYyBv
cmllbnRhdGlvbiAqLwo+PiArCQl2YWwgPSBTV19QT1JUU0VMRUNUX01VWDsKPj4gKwkJaWYgKHFt
cC0+b3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSkKPj4gKwkJCXZhbCB8
PSBTV19QT1JUU0VMRUNUX1ZBTDsKPj4gKwkJd3JpdGVsKHZhbCwgcW1wLT5wY3NfbWlzYyk7Cj4+
ICsJfQo+PiArCj4+ICsJaWYgKHFtcC0+dGNzcl9tYXAgJiYgcW1wLT5kcF9waHlfbW9kZV9yZWcp
Cj4+ICsJCXJlZ21hcF93cml0ZShxbXAtPnRjc3JfbWFwLCBxbXAtPmRwX3BoeV9tb2RlX3JlZywg
aXNfZHApOwo+IFdyaXRlIHRoaXMgcmVnIGRpcmVjdGx5IGZyb20gVVNCIC8gRFAgaW5pdC4KCgpP
ay4KCgo+PiAgCj4+ICAJcmV0dXJuIDA7Cj4+ICAKPj4gQEAgLTczMyw2ICs3MzgsOSBAQCBzdGF0
aWMgaW50IHFtcF91c2JjX2NvbV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPj4gIAo+PiAgCWNsa19i
dWxrX2Rpc2FibGVfdW5wcmVwYXJlKHFtcC0+bnVtX2Nsa3MsIHFtcC0+Y2xrcyk7Cj4+ICAKPj4g
KwlpZiAocW1wLT50Y3NyX21hcCAmJiBxbXAtPmRwX3BoeV9tb2RlX3JlZykKPj4gKwkJcmVnbWFw
X3dyaXRlKHFtcC0+dGNzcl9tYXAsIHFtcC0+ZHBfcGh5X21vZGVfcmVnLCAwKTsKPiBXaHk/CgoK
U2luY2UgdGhpcyBpcyBhIHN3aXRjaGFibGUgUEhZLCBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIHNl
dCBpdCBvbmx5IGR1cmluZyBlbmFibGUuCknigJlsbCByZW1vdmUgdGhlIFRDU1IgaGFuZGxpbmcg
ZnJvbSBjb21fZXhpdCBpbiB0aGUgbmV4dCBwYXRjaC4KCgo+PiArCj4+ICAJcmVndWxhdG9yX2J1
bGtfZGlzYWJsZShjZmctPm51bV92cmVncywgcW1wLT52cmVncyk7Cj4+ICAKPj4gIAlyZXR1cm4g
MDsKPj4gQEAgLTEwNDUsNiArMTA1MywxNyBAQCBzdGF0aWMgaW50IHFtcF91c2JjX3VzYl9wb3dl
cl9vZmYoc3RydWN0IHBoeSAqcGh5KQo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCj4+ICtzdGF0
aWMgaW50IHFtcF9jaGVja19tdXRleF9waHkoc3RydWN0IHFtcF91c2JjICpxbXAsIGJvb2wgaXNf
ZHApCj4+ICt7Cj4+ICsJaWYgKChpc19kcCAmJiBxbXAtPnVzYl9pbml0X2NvdW50KSB8fAo+PiAr
CSAgICAoIWlzX2RwICYmIHFtcC0+ZHBfaW5pdF9jb3VudCkpIHsKPj4gKwkJZGV2X2VycihxbXAt
PmRldiwgIiVzIFBIWSBidXN5XG4iLCBpc19kcCA/ICJVU0IiIDogIkRQIik7Cj4gIlBIWSBpcyBj
b25maWd1cmVkIGZvciAlcywgY2FuIG5vdCBlbmFibGUgJXNcbiIKCgpBY2suCgoKPj4gKwkJcmV0
dXJuIC1FQlVTWTsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiAgc3Rh
dGljIGludCBxbXBfdXNiY191c2JfZW5hYmxlKHN0cnVjdCBwaHkgKnBoeSkKPj4gIHsKPj4gIAlz
dHJ1Y3QgcW1wX3VzYmMgKnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+PiBAQCAtMTA1Miw3
ICsxMDcxLDExIEBAIHN0YXRpYyBpbnQgcW1wX3VzYmNfdXNiX2VuYWJsZShzdHJ1Y3QgcGh5ICpw
aHkpCj4+ICAKPj4gIAltdXRleF9sb2NrKCZxbXAtPnBoeV9tdXRleCk7Cj4+ICAKPj4gLQlyZXQg
PSBxbXBfdXNiY19jb21faW5pdChwaHkpOwo+PiArCXJldCA9IHFtcF9jaGVja19tdXRleF9waHko
cW1wLCBmYWxzZSk7Cj4+ICsJaWYgKHJldCkKPj4gKwkJZ290byBvdXRfdW5sb2NrOwo+PiArCj4+
ICsJcmV0ID0gcW1wX3VzYmNfY29tX2luaXQocGh5LCBmYWxzZSk7Cj4+ICAJaWYgKHJldCkKPj4g
IAkJZ290byBvdXRfdW5sb2NrOwo+PiAgCj4+IEBAIC0xMTAzLDcgKzExMjYsMTEgQEAgc3RhdGlj
IGludCBxbXBfdXNiY19kcF9lbmFibGUoc3RydWN0IHBoeSAqcGh5KQo+PiAgCj4+ICAJbXV0ZXhf
bG9jaygmcW1wLT5waHlfbXV0ZXgpOwo+PiAgCj4+IC0JcmV0ID0gcW1wX3VzYmNfY29tX2luaXQo
cGh5KTsKPj4gKwlyZXQgPSBxbXBfY2hlY2tfbXV0ZXhfcGh5KHFtcCwgdHJ1ZSk7Cj4+ICsJaWYg
KHJldCkKPj4gKwkJZ290byBkcF9pbml0X3VubG9jazsKPj4gKwo+PiArCXJldCA9IHFtcF91c2Jj
X2NvbV9pbml0KHBoeSwgdHJ1ZSk7Cj4+ICAJaWYgKHJldCkKPj4gIAkJZ290byBkcF9pbml0X3Vu
bG9jazsKPj4gIAo+PiBAQCAtMTQ2Nyw3ICsxNDk0LDcgQEAgc3RhdGljIGludCBxbXBfdXNiY190
eXBlY19zd2l0Y2hfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPj4gIAkJcW1wX3Vz
YmNfdXNiX3Bvd2VyX29mZihxbXAtPnVzYl9waHkpOwo+PiAgCQlxbXBfdXNiY19jb21fZXhpdChx
bXAtPnVzYl9waHkpOwo+PiAgCj4+IC0JCXFtcF91c2JjX2NvbV9pbml0KHFtcC0+dXNiX3BoeSk7
Cj4+ICsJCXFtcF91c2JjX2NvbV9pbml0KHFtcC0+dXNiX3BoeSwgZmFsc2UpOwo+PiAgCQlxbXBf
dXNiY191c2JfcG93ZXJfb24ocW1wLT51c2JfcGh5KTsKPj4gIAl9Cj4+ICAKPj4gQEAgLTE2MDIs
MTMgKzE2MjksMTMgQEAgc3RhdGljIGludCBxbXBfdXNiY19wYXJzZV91c2JfZHQoc3RydWN0IHFt
cF91c2JjICpxbXApCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+ICAKPj4gLXN0YXRpYyBpbnQgcW1w
X3VzYmNfcGFyc2VfdmxzX2NsYW1wKHN0cnVjdCBxbXBfdXNiYyAqcW1wKQo+PiArc3RhdGljIGlu
dCBxbXBfdXNiY19wYXJzZV90Y3NyKHN0cnVjdCBxbXBfdXNiYyAqcW1wKQo+PiAgewo+PiAgCXN0
cnVjdCBvZl9waGFuZGxlX2FyZ3MgdGNzcl9hcmdzOwo+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9
IHFtcC0+ZGV2Owo+PiAgCWludCByZXQ7Cj4+ICAKPj4gLQkvKiAgZm9yIGJhY2t3YXJkcyBjb21w
YXRpYmlsaXR5IGlnbm9yZSBpZiB0aGVyZSBpcyBubyBwcm9wZXJ0eSAqLwo+PiArCS8qICBmb3Ig
YmFja3dhcmRzIGNvbXBhdGliaWxpdHkgaWdub3JlIGlmIHRoZXJlIGlzIDEgb3Igbm8gcHJvcGVy
dHkgKi8KPj4gIAlyZXQgPSBvZl9wYXJzZV9waGFuZGxlX3dpdGhfZml4ZWRfYXJncyhkZXYtPm9m
X25vZGUsICJxY29tLHRjc3ItcmVnIiwgMSwgMCwKPj4gIAkJCQkJICAgICAgICZ0Y3NyX2FyZ3Mp
Owo+PiAgCWlmIChyZXQgPT0gLUVOT0VOVCkKPj4gQEAgLTE2MjMsNiArMTY1MCwxMyBAQCBzdGF0
aWMgaW50IHFtcF91c2JjX3BhcnNlX3Zsc19jbGFtcChzdHJ1Y3QgcW1wX3VzYmMgKnFtcCkKPj4g
IAo+PiAgCXFtcC0+dmxzX2NsYW1wX3JlZyA9IHRjc3JfYXJncy5hcmdzWzBdOwo+PiAgCj4+ICsJ
cmV0ID0gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2ZpeGVkX2FyZ3MoZGV2LT5vZl9ub2RlLCAicWNv
bSx0Y3NyLXJlZyIsIDEsIDEsCj4+ICsJCQkJCSAgICAgICAmdGNzcl9hcmdzKTsKPj4gKwlpZiAo
cmV0ID09IC1FTk9FTlQpCj4+ICsJCXJldHVybiAwOwo+PiArCj4+ICsJcW1wLT5kcF9waHlfbW9k
ZV9yZWcgPSB0Y3NyX2FyZ3MuYXJnc1swXTsKPj4gKwo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAg
Cj4+IEBAIC0xNjY1LDcgKzE2OTksNyBAQCBzdGF0aWMgaW50IHFtcF91c2JjX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAJaWYgKHJldCkKPj4gIAkJcmV0dXJuIHJldDsK
Pj4gIAo+PiAtCXJldCA9IHFtcF91c2JjX3BhcnNlX3Zsc19jbGFtcChxbXApOwo+PiArCXJldCA9
IHFtcF91c2JjX3BhcnNlX3Rjc3IocW1wKTsKPj4gIAlpZiAocmV0KQo+PiAgCQlyZXR1cm4gcmV0
Owo+PiAgCj4+Cj4+IC0tIAo+PiAyLjM0LjEKPj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
