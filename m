Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46EE3CED260
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 10:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZizHqOsLJbYg3NXXdAtwzRt6yWoAN4p903xofsnX6Y=; b=COk/pM360fG2t2
	sxZ3hQ/xwhPj/ArYgu0yBJfOh50fdldXUAlkjZ2c4rNXOfnA5E+8Cre9XFnbYhnFZE7IyTSBhD0/Z
	mLXkl9Srfpi4RuErGeF8P67aIVJN+DvypLrXbPwEA6DtSpRl4ZByAcnZ4C5lUZIk3SSggmNsXR5Rg
	kcZZ1owhu9PsyNOE5Tk+VNCTroH3d+2D9J6VwyzuFEbMyZM2BENGzfM4gUkiUXyoXV7F9+xv98tco
	OGbD2cUX0JfkgmTBt0B0PLI9RvYon0A+ysVpHANV040OAR5KR/mqeo7PzgUye4wsipdMpw+1OMT/D
	vGvP8S4CRN84H7dNXHHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIgr-00000000DqO-30Zr;
	Tue, 18 Nov 2025 10:12:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIgo-00000000DpK-3rEK
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 10:12:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI3BPbS375679
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 10:11:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=; b=nQGnFtnrJESm64mR
	9pEc4QGS9+y/0mQ5OuNcwYcNBN7K9xcBXlAZDMp3AESCmTFz6V4EtRyMRhEok4FE
	LJlTT7GbrrR5JD/PzKyzc1ItEtLZtrnFYMd3p1CStYB1LamauxsLJ/Vxu9dE6eWk
	sNGBuKh/xOWdXERN2tINpi6JyN7Z499XZZ7UF37dVO74mRhpBy4BVbzX6Slp8a/k
	vVDWFOIGBUuoT4WZ+dC3O2E09RSTsmIUOQA3YrwJZmz8zBS8PkEbCE/SyB3PW+3g
	iHXBEcNt1S3G0aV7cwlkcczhwsXkck9+4QYTxIP5O3gPGA81pEQJCyhpNgsHHus7
	FctMpg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag76njrk9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 10:11:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-299ddb0269eso28020355ad.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 02:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460717; x=1764065517; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=;
        b=GiZOhQrKgyUqckX9b2qu4E7IiWFFCyJ6vNCzyM2YVg82f0UvpG0WDcAg7+EoXXi2Pf
         EoyDoQIpzju6JVBK9RpW20wrW6I8eqgbIg7GgGBm3JCEVjNb2MkZ59zjoGiwPIJhJzud
         6IayamklTgALeD02mEY7d0Ho1+mmmkrCGKySjgc1eDzbrFhmrWiTBLMu3iwq3NbEMCHI
         sI7W49s+nOPyP8JXMXjyO4+4c5BhPCt7x93UbyUaCsV/qvsir9f4EbGlML1aansZYPrw
         vAArPHRUDBX02HD89yvtfYzWXkwvmI2qF3VTwbTH9LbgbaN/yf9WBDma/TorFVz4kYHC
         dwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460717; x=1764065517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=;
        b=wPLUhg2crOaqaYxADZg/ONdRhQIJS+zkVqUV2L7rCOu+pB2FyyBT+BQ8eqK5ZH1c3p
         CS9mUE0xinXfWsc5C5qvscdZDuMT7YbZ8EF6Y+F/eh1Q4dqxASM3kvFP1LYs6yjWuAZ0
         IjpEytgSxktdUDgHhIcwP/C+kVytSBlrsk3vasPzGK7X/GhLzM5iJuvquCm0/FkZ9E4z
         6Gqhcs1W+OHmgulnJguxGK5QP1am6XWhWuOolxBaX8Gd3dwyMjFatg92EmxWwnaPKUs3
         eoo2LfWi0qXkoxPvE2J9EyhYbtsQLnOS/SfiaKGDBGpMRZvi2Ne+H/Zy/fcsK36ERw3f
         joBw==
X-Forwarded-Encrypted: i=1; AJvYcCXpv6mZQ03JFXzyjrI+tqzhulyoZnnU6WnZAt6VunW6wd/kNL1Vu1O/BzAFAa4FEmy95gyiPeRKfGM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyw30Ryc9hUlXJwITvvmMJHVWsTe3ABIS3qrMYmQecve7Dkq8dj
	y+3mKtlxabKCNK+MqogT63mey7PzYSmuuhkJIp1MbEesIVi9qLfyP7fM2D5dW4K9hwuLMYp1tnG
	+Tie6QWCn5MsRpAK7BES6K/g9aTV5n48e9NQEFtG4he6W6g8PWI3J0SCWy6rr4djSIwnz
X-Gm-Gg: ASbGnctSKRNXkpM6xySdYlffqcn3ju+U9z6MimhazlDMLeFxhRbV3U4e5Pz+ZQAjZNx
	pdD9jltdFeLtLofc88OZDvyvBnEE1WvgLOfpqy7iGgp7Ya9RZ9ZT+BXIinGvFvo6cHFYgiUibl0
	56KIf3jP65dZOAD2vFT5658TfDN9YhkAjAt99tHPahu9RzGi+S/L+NDhGaSuXc+qaA/mBF4hxgF
	LOJJ7rfEtASat1P7PT3HNLZUDwSlvzfI03MA3I4NT4NEHmQoFRTd85gogBzb+fAov3EQRr63vUf
	7yyYyZbIbB6tTjlBTXKpO5PirT5bqlWKlHh2Mpm0cXEmZHL4WuFHtYLfVo4s4bKJvi3szXrrAc8
	aCSsd7gGzSPeNbA3SQoBjFwABEvHgZywSIgnPswweMlnlwaCh1KgfWqNlDgbqIGre
X-Received: by 2002:a17:902:f647:b0:298:42ba:c422 with SMTP id d9443c01a7336-2986a73303amr176999495ad.31.1763460716845;
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSElhq/foZIVZg0t4wjamD5rzsGK+/4gwbgY+RGs+mSFiFVT1jM6xTJZ07fGy9cGHEujc8lw==
X-Received: by 2002:a17:902:f647:b0:298:42ba:c422 with SMTP id d9443c01a7336-2986a73303amr176999195ad.31.1763460716345;
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
Received: from [10.133.33.100] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986e5ef32asm133115195ad.39.2025.11.18.02.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
Message-ID: <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 18:11:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
 <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MSBTYWx0ZWRfX0utMYJdJvu4h
 HhUJoQ8Xtng9RZljoxfligZZ0kHm5Iau8KRrCPeKlsOvOHwAbQte6zQd/X1MsHKFnGIYOTuzbBp
 CPUudcSzNKcDCMfrI2vLb8zc+/h3PPIpx+oRm5fH6k76epdbhTxRcGlV/KETuxSaeOtITFWd3eV
 wFJRkcFUETooZ8EVhHYksrJsU8Pxs71/itTHOP3T3UedQ/zxcxe43yrUMAZMiJR5JfRyx4ka7nY
 J3gPXaTbCoR9vyg9/RJlPcei4MaBXo4DKfnCbUciy1Ss3bXiU9jPqvTffFaxMZ2lWwJncjFetSe
 gOZHbwAHEYt9JqmS4uGnA1sa+ZBGHWb1C08JerSqIPBgKM/e/t/R4EAIXP5TzWUnlcd+B3ZUIM6
 8sz4IaFzInm2eTIA25a79ygiVKkxLA==
X-Proofpoint-GUID: 0Uh3SiqavtdixO8vUyx0ViSXMx7u4kqj
X-Proofpoint-ORIG-GUID: 0Uh3SiqavtdixO8vUyx0ViSXMx7u4kqj
X-Authority-Analysis: v=2.4 cv=a4I9NESF c=1 sm=1 tr=0 ts=691c466d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0FT5JWsqCLsmEzCoxIcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_021159_072990_DFD49D31 
X-CRM114-Status: GOOD (  16.17  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDExLzEzLzIwMjUgNToxNiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQs
IE5vdiAxMiwgMjAyNSBhdCAwNTowMzoxNlBNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToKPj4g
SEFNQU8gSW9UIEVWSyB1c2VzIFBDSWU1IHRvIGNvbm5lY3QgYW4gU0RYNjUgbW9kdWxlIGZvciBX
V0FOIGZ1bmN0aW9uYWxpdHkKPj4gYW5kIFBDSWUzIHRvIGNvbm5lY3QgYSBTQVRBIGNvbnRyb2xs
ZXIuIFRoZXNlIGludGVyZmFjZXMgcmVxdWlyZSBtdWx0aXBsZQo+PiB2b2x0YWdlIHJhaWxzOiBQ
Q0llNSBuZWVkcyAzLjNWIHN1cHBsaWVkIGJ5IHZyZWdfd3dhbiwgd2hpbGUgUENJZTMgcmVxdWly
ZXMKPj4gMTJWLCAzLjNWLCBhbmQgMy4zViBBVVggcmFpbHMsIGNvbnRyb2xsZWQgdmlhIFBNSUMg
R1BJT3MuCj4+Cj4+IEFkZCB0aGUgcmVxdWlyZWQgZml4ZWQgcmVndWxhdG9ycyB3aXRoIHJlbGF0
ZWQgcGluIGNvbmZpZ3VyYXRpb24sIGFuZAo+PiBjb25uZWN0IHRoZW0gdG8gdGhlIFBDSWUzIGFu
ZCBQQ0llNSBwb3J0cyB0byBlbnN1cmUgcHJvcGVyIHBvd2VyIGZvciB0aGUKPj4gU0RYNjUgbW9k
dWxlIGFuZCBTQVRBIGNvbnRyb2xsZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5n
IDx6aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tPgo+PiBSZXZpZXdlZC1ieTogS3Jpc2huYSBD
aGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cj4+IC0t
LQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3QtZXZrLmR0cyB8IDgzICsr
KysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygr
KQo+Pgo+PiArJnBtYzgzODBfM19ncGlvcyB7Cj4+ICsJcG1fc2RlN19hdXhfM3AzX2VuOiBwY2ll
LWF1eC0zcDMtZGVmYXVsdC1zdGF0ZSB7Cj4gV2hhdCBpcyBzZGU3PyBPdGhlciB0aGFuIHRoYXQ6
Cj4KPgo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9z
cy5xdWFsY29tbS5jb20+Cj4KSGkgRG1pdHJ5CgpJ4oCZbSBub3Qgc3VyZSB3aGF0IOKAnHNkZTfi
gJ0gcmVmZXJzIHRvIHNwZWNpZmljYWxseS4gSSBzYXcgdGhpcyBuYW1lIGluIHRoZQoKc2NoZW1h
dGljLCBhbmQgdGhlIHBpbiBpcyBsYWJlbGVkIFBNX1NERTdfQVVYXzNQMywgc28gSSB1c2VkIHRo
YXQgbmFtaW5nCgppbiB0aGUgRFQuCgoKQlJzCgpaaXl1ZQoKPgo+PiArCQlwaW5zID0gImdwaW84
IjsKPj4gKwkJZnVuY3Rpb24gPSAibm9ybWFsIjsKPj4gKwkJb3V0cHV0LWVuYWJsZTsKPj4gKwkJ
b3V0cHV0LWhpZ2g7Cj4+ICsJCWJpYXMtcHVsbC1kb3duOwo+PiArCQlwb3dlci1zb3VyY2UgPSA8
MD47Cj4+ICsJfTsKPj4gKwo+PiArCXBtX3NkZTdfbWFpbl8zcDNfZW46IHBjaWUtbWFpbi0zcDMt
ZGVmYXVsdC1zdGF0ZSB7Cj4+ICsJCXBpbnMgPSAiZ3BpbzYiOwo+PiArCQlmdW5jdGlvbiA9ICJu
b3JtYWwiOwo+PiArCQlvdXRwdXQtZW5hYmxlOwo+PiArCQlvdXRwdXQtaGlnaDsKPj4gKwkJYmlh
cy1wdWxsLWRvd247Cj4+ICsJCXBvd2VyLXNvdXJjZSA9IDwwPjsKPj4gKwl9Owo+PiArfTsKPj4g
Kwo+PiAgICZwbWM4MzgwXzVfZ3Bpb3Mgewo+PiAgIAl1c2IwX3B3cl8xcDE1X3JlZ19lbjogdXNi
MC1wd3ItMXAxNS1yZWctZW4tc3RhdGUgewo+PiAgIAkJcGlucyA9ICJncGlvOCI7Cj4+IC0tIAo+
PiAyLjM0LjEKPj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
