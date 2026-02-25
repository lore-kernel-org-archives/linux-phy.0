Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F4BF357DA
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 07:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzKxPf/IONsZFSG/hauKukJSEVj0+foCWKDzozviBxo=; b=U2vSijhcdyV9b+
	fb9IGR60BtEGyZlOLNWJwnpb5xh1TIrQ1S+dxYOu/ZKHOhPp5twPuy0pkGZefw3LifvCWaIUIcujq
	g/6k9lXrHdpxVIMcxNoOPfTAHW9tAZWxsihm5CGxLVFrfOzYFFwdaHPkqDV+wG/MpfoizwI6REGkl
	pwv9tLgB12WjaTSJDOGgNZ+oaxsE+tm4qqROiWMD+EFmc7be46scyMnfe3j1ZJt/fxCFufmURo5Gv
	ayzxwJcnW/G3vCljOOhMEPjVL6PngLTD1Y/BxVxmZSbmmYoc3f61uzp7A5OjKpMgwTwxqzwUxHFBY
	P0WhgrYmrd0LYdA4/97Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9D8-00000003OuV-2Sfh;
	Wed, 25 Feb 2026 07:21:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9D1-00000003OrB-1hCH
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 07:21:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P3c4XE3333493
	for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 07:21:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EyqBXnvRENyJjfa/hP0ua/tVCf9aQxn3tn6/9tsNVKs=; b=k+ckSWzNiDBGpJdz
	TjcqYDz6mdxeW3144wHmT25KmFC6TEak3O1DiwY17BzkNh1WBBg+YZlM9uofuG9n
	1nGvBoc1ywzujMzN6uYU7O5OO0hD7fPPT5VDd/Szr2XAHqcreKcnvEJtXjyfcaf4
	1q00uBB1QLkML4xfN3NbEv5Y21i9eD8TGfB7qMm46EWFMWSoWlyJ/T7NDMjyD3yO
	qoL5AkHgLlFaaKji6+5tl2IzgRqKwyFsA5awyDPOBKOPIUjDCcDESnBhhsefy9WB
	bt1NXVcLmWYOkkU1xDlpJCAtvWTWKPAu9Cxx1ngfeHf63VQXxva/hMGa5Tvq9Y85
	faEGCQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chh4721kn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 07:21:21 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3561f5bd22eso5394447a91.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 23:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772004080; x=1772608880; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EyqBXnvRENyJjfa/hP0ua/tVCf9aQxn3tn6/9tsNVKs=;
        b=HVkpW/nOgDaEemS3M9nShPQJkxy4xNfrgW1eJx8a6EAtPr9ed6mudeZuxIrJdvOfYo
         n63JMrjXwl4tXqkk+aklgMwqUU+Cx+u18Q8YgGe3pe4IJEZhpxuegcw9JTHjzd546cJx
         rrgv1DBfjMm7pQDRlLDdHhj2T9ucBvf5cc5ze5w2HP6PD6fG2OCP/gi01ke75mGN6zkz
         FdfvM5nuLdL6bwU1Xw+duqSd+E2wZweXdy58h+pQjrwdYB/ZDbI6JODkZCL4v/Q9q/EF
         KdC8YYkqDT6TfYNuiimeWhP49gQSs8ENmfl9LZaQTt9HJ0gWQK98Js/MGBewSuqSI6zO
         2Ozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004080; x=1772608880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyqBXnvRENyJjfa/hP0ua/tVCf9aQxn3tn6/9tsNVKs=;
        b=KLwCwcBj3vAGwmVXMud53U2AwyyGATsWF1zDBbYi+DMOu+9EQMETsz7hRYUD+pj9/b
         s14aTj9TuzvVQPRhO3WnMXc347KimiFzWluHAVUIcr7El6PA5Zg7o6iJ7hxzaVisCJVE
         wiPQ3et8NBoDaiWjxOPRE7MDnqSQNn2CGNCN+saY5HUv0dSDBieDpseLMw4HyYeDsrjX
         lNQtomiYuO/DhnTyJgjr8kEZd1BGO1zgf7CXsAIpHHfbPU+LamvtbBiJw2n0eyHWVyE0
         0RNwud+txMsvVtkkdfLH233A7SDRgbbAR4dfC2Q4IEBMFZuHNMJawfZrOeZ+a7oAvlrK
         MOZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUvUAOo495Q9OX372xSUrNveFZ8KfhFSntYDxwKtxBvEIzv/FBiN5fIkRu8MpY5i9xu9cAAN9OR/A=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIp0GgzWFDW1s+WoKmD6jv33FUkggZgfyJsJzvc4ZB52Gg+Nyh
	m3xrm/7ML0Y3mAp6wv5kblDcU95kWP65c25yDd6eRelMo81C6fAQt8R7Js0kdd+rYjKfiv2w2Eh
	WoSdkFc8H1zPKSlirBeAzkdl9dXcdijzkbORnzf6qI8W/PxFJGa9jjYrUrQuQmrQ4bDe1
X-Gm-Gg: ATEYQzynq6jPjnCjCKimOk39r2G1Mvh87vN64ZJjSwlkvQMIMLJH9uhxNQsHcoJo4sx
	lwjFnyKiZ4c80hJ1isfc6TxFC063xZGA3v5f5yABeM3bmVVjKp/symXcD/VQsyziLHvFLwIyBh9
	W33tCMQbFz08p8ty4quhYSjKZDTeD2q4MfnyNKkLrXqBdizWAi00nt+Uu7JPOIjIy7zHfYa2v1h
	d8VgCIBoSRP9ydCJAclIosyOgX7MarIeg09Bw4wIu9Y+Jw6pJ2mp+QnqfwBF7fWHrihs5cuBuDa
	uXQ83fJD6YeaZDELBVEBJJsEU6NZ9L0WkseqwaCZqWMhDZ0btou2RrGiQ5+JZWYOfd7Y7FOhnpi
	3LGOq/PLmmGz6jMlZqoz71g0A1VCTK67a3RmQCGmc4tkzqQE6cZDNKKYdOFb2PcF3JXWfSQKi8L
	vZx2q+
X-Received: by 2002:a17:90b:2812:b0:354:a9f3:68bc with SMTP id 98e67ed59e1d1-358ae8e8390mr11691754a91.30.1772004080558;
        Tue, 24 Feb 2026 23:21:20 -0800 (PST)
X-Received: by 2002:a17:90b:2812:b0:354:a9f3:68bc with SMTP id 98e67ed59e1d1-358ae8e8390mr11691731a91.30.1772004080064;
        Tue, 24 Feb 2026 23:21:20 -0800 (PST)
Received: from [10.133.33.74] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35912e19c4csm739217a91.0.2026.02.24.23.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 23:21:19 -0800 (PST)
Message-ID: <d9790125-d39d-4fcb-89d8-705ad964ebde@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:21:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
 <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
 <8dbc18a0-6a64-491b-84b0-ba220c9050ac@oss.qualcomm.com>
 <ece590b8-9a29-49f2-934b-6082f093290d@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <ece590b8-9a29-49f2-934b-6082f093290d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: g2lMVekv7Kc6jGO34nY7l2Hyoiijs39w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3MCBTYWx0ZWRfX61xhDy36gfi7
 dCAq3fVV8C3ygt0zbXfwktjmhVsfxGVdkH0q/KIe0J7aPFsaqOwqy/f/5xbffV6ShojQYotKLOz
 o4W5pxncmqHegeEwvTwVa6D8Azfuso8xjUUtk9FJVEduy6089w/eTmvUH5K+GkTXTcP6T5ieY8X
 UAZvcGshud5KMXQY7DTttXhm2+rHDWtNPA3fwCxrobyAPQEzWL1goZ2X7XffvBC0nMBrZj3I2VI
 frUaAVThEHffqtaPi+4t/Lv/edeEjkOjRc1HozAAmjCCujE/sSWNfeKSxDLsGGc3sxo04sbMMMc
 /m8LC5FnzzDAHx3j+W4ieH36du2Z+o8cWdbrO/aj24o7DvP1m70Felov9WnoxouLs6RXCC3ZPM0
 AxTkzr1p7ynfgLFEqkGegpF7gu9IoBweQjxeai4/xiJUTkCoCyKp9jiR5szLGhYIv8OOELCz3w7
 1E+x/W3onXqOdkwri2Q==
X-Authority-Analysis: v=2.4 cv=fvDRpV4f c=1 sm=1 tr=0 ts=699ea2f1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=Ywmpiw0kLQgVKrmd7HMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: g2lMVekv7Kc6jGO34nY7l2Hyoiijs39w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_232126_069478_10702A40 
X-CRM114-Status: GOOD (  15.80  )
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

CgpPbiAyLzEzLzIwMjYgNzoxNCBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAyLzEyLzI2
IDEwOjA0IEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIvNi8yMDI2IDY6NTIg
UE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiAyLzUvMjYgMTA6MjAgQU0sIFlvbmd4aW5n
IE1vdSB3cm90ZToKPj4+PiBJbnRyb2R1Y2UgdGhlIGNvbV9sZG9fY29uZmlnIGNhbGxiYWNrIHRv
IHN1cHBvcnQgcGVy4oCRUEhZIExETwo+Pj4+IGNvbmZpZ3VyYXRpb24uCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3MucXVhbGNvbW0uY29tPgo+
Pj4+IC0tLQo+Pj4KPj4+IFsuLi5dCj4+Pgo+Pj4+ICtzdGF0aWMgaW50IHFjb21fZWRwX2xkb19j
b25maWdfdjQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCj4+Pj4gK3sKPj4+PiArwqDCoMKg
IGNvbnN0IHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9v
cHRzOwo+Pj4+ICvCoMKgwqAgdTMyIGxkb19jb25maWc7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgaWYg
KCFlZHAtPmlzX2VkcCkKPj4+PiArwqDCoMKgwqDCoMKgwqAgbGRvX2NvbmZpZyA9IDB4MDsKPj4+
PiArwqDCoMKgIGVsc2UgaWYgKGRwX29wdHMtPmxpbmtfcmF0ZSA8PSAyNzAwKQo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBsZG9fY29uZmlnID0gMHhDMTsKPj4+Cj4+PiBsb3dlcmNhc2UgaGV4LCBwbGVh
c2UKPj4+Cj4+Pj4gK8KgwqDCoCBlbHNlCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGxkb19jb25maWcg
PSAweDgxOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4MCAr
IFRYbl9MRE9fQ09ORklHKTsKPj4+PiArwqDCoMKgIHdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4
MSArIFRYbl9MRE9fQ09ORklHKTsKPj4+Cj4+PiB0eDEgc2hvdWxkIGJlIGRwX29wcy0+bGFuZXMg
PyAyIDogbGRvX2NvbmZpZyA6IDB4MDAsIGluIGFsbCBjYXNlcywKPj4+IEkgYmVsaWV2ZQo+Pj4K
Pj4+IEtvbnJhZAo+PiBIaSwgaGVyZSBpIHdhbnQgdG8gY29uZmlybSBhZ2Fpbi4uIEluIHRoZSBI
UEcgbWFpbiBsaW5rIGJyaW51cCBzZXF1ZW5jZSwgaXQgbm90IHNheSB3cml0ZSBUWDAvVFgxIGxk
b19jb25maWcgYmFzZWQgb24gdGhlIGxhbmUgY291bnQuIE9ubHkgd2hlbiB3ZSBzd2l0Y2ggdGhl
IGxhbmUgbW9kZSzCoCB0aGUgTERPIGNvbmZpZyB3aWxsIGJlIHVwZGF0ZWQgYWNjb3JkaW5nIHRv
IHRoZSBsYW5lIGNvdW50LiBzbyBoZXJlIGRvIHdlIHJlYWxseSBuZWVkIHRoaXMgY29uZGl0aW9u
Pwo+IAo+IEkgZG9uJ3QgYmVsaWV2ZSB0aGVzZSB0d28gY2FzZXMgYXJlIGRpZmZlcmVudGlhdGVk
IGluIHlvdXIgcGF0Y2gsIHVubGVzcwo+IHlvdSdyZSB0cnlpbmcgdG8gc2F5IHRoYXQgdGhlIGhh
cmR3YXJlIGlzIHNtYXJ0IGVub3VnaCB0byB0dXJuIG9mZiB0aGUgTERPCj4gZm9yIFRYMjMgb24g
aXRzIG93biBhcyB3ZSBzd2l0Y2ggbW9kZXMsIHdoaWNoIEkgd291bGRuJ3QgYmV0IGl0IGlzIGFu
ZCBjYW4ndAo+IGZpbmQgY29uZmlybWF0aW9uIGZvcgo+IAo+IEtvbnJhZApHb3QgaXQuIHdpbGwg
dXBkYXRlIG5leHQgcGF0Y2guCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
