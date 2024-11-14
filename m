Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CB5D68B36
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 16:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhwWs/1Om76SznyBmOJIueMdXFX09ROTMCRS5jJEKoo=; b=Uk3Cqr44k0ikvD
	VVNrKLxjTIrZvQinhEAbybysrU5lcRa03svTYq+A+umiNg8cdUjcJLCl9Nc46XIxo/ZA/mHx6clG4
	OkVm/YVJzS1Bgpdq3yZzgpkDxRcJYV5Gyy6kmCzWpSTh2a238Sd6NeAZoVfJV/MytC67WT8yENw3S
	JsPHiVafLAAW85Xk78KnSQUF+Ehag/gDZJCRTLRwms1bygp7oTr3JwnppwJNW7mhDUnkmAgYk1T1t
	MWwv+PG+1a1nkhowJjlVkoau61AnTBtMjcNNWB6RZrliZonYnuUwrxNdYPxHg+HTJxSPJzGKeTWdK
	SztlFywy3JYH/cpauMCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcmZ-0000000093C-2xK4;
	Thu, 14 Nov 2024 16:33:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcmO-00000000906-3IJk
	for linux-phy@bombadil.infradead.org;
	Thu, 14 Nov 2024 16:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=77Uxb2WKa15F5RlNtYFFhLRjfJru9BUZrxBhSgyxq1Y=; b=VFHZex6oYfwUup5QyjLXTxLEXr
	euPTOAimDi72BNcYE22+/REJ3FRFnJ+qkTOEYPvwQq1m1CEB5lDbjDQFsGO/lhqHwhvl5vm0KMymh
	ByILkx6KsGBdB/7RNCR9z3yjgffPpcWU6H1UyfbsqMIpqf44TLOheNLqiNVxw+1rgYwC3jVWKJyfp
	9sYESof1Bvh5Lqg4pm1c/G3Jh2Kzr1d5oqjqeNvyZ7sfsnM0SK/ET6tvdv6LYhJ0Z0a0icqeUknSl
	mvVIfpU2PdCZ2qKQ6dbBBYaqppoExKecc2OO0JvbyfhU8kmkVQ784sle+ze6LC24RelHqz4l6UN4F
	a4gTWypA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBbju-0000000052S-0ao5
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 15:26:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AEF1SIa026695
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 15:25:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	77Uxb2WKa15F5RlNtYFFhLRjfJru9BUZrxBhSgyxq1Y=; b=R7dZLa0bxgFu8heQ
	hYjjlXMBKY6UuVf7g7G/pBjXtCgqHWhO4/EjJuViaogxOKU7+qb+dmFlbA/3rkY6
	hmD6yVU55eLplKiOr4u3MCTslUkcOItfLEwO4Wlus6/XsKN0z52Ymd3sx0duef+h
	ZpMxNDMW+vdYi2oluKCYW/GSiJE44wVKe76rku89JCZC5ck5VHq4OBSZDk/a5yTm
	Tpiirxm/RjJCBbosbOMSMmfZTk1bjfkip9sX4YuzsQDB4NbaCizDt4aUPxv852c2
	bSB9s8n+dwDEZGoEOfFI8H9KnBJXPp51v3IqGderpIqpRZIxtv8OsnLVnPGypB0B
	vqcFRw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vt7359x3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 15:25:31 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46086de3a40so1691371cf.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 07:25:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731597931; x=1732202731;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77Uxb2WKa15F5RlNtYFFhLRjfJru9BUZrxBhSgyxq1Y=;
        b=R7hjqVRcyVcC7j2BjoS9io3Li+YSGyXfbR2CnsNFLnSHmftIZXl89GKJZNqOi2rqmI
         ZLK2qMIKtTUM1lPQgFgAnqI4GHJOnC8LztEiHzzRZ35MzWiFqlCWx4zY6PbWW07bStN+
         ZnpuDI+aNgP0fvbL4UQS0vU2gn/xRiJG0YPCsPBGaKnfLVLMvSNYRaD7F+E1KRW7ddUO
         z9phaFo7fzAwWdvy0v1wFqegwwmo9Qp7xJeRtLFYwyE5Ul4bGuIvelRL+LHhp8SpRWAD
         357cZ+8gE4u5y4eH5VyeMBnliSrbttsEsaFzHJvuaQwfEKn69WtspYJQuEphlY5rKHu0
         XsHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtuQEy54fKc0W6MhuB4HsoxhdhvPbvIOFjVWGdjkScCsSvpaqtOQ1my3FmygYS200tLcGvI4p5ytQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy31TWXtELQZKaXXPFdUSWxETQzE8MHYSQKzEogq+XQ6CsnfRRr
	RQ15mzblCEyEtSP67hmvVnuIEl7fSQUzwFMazqdsqX/nsQ8vrYuWFPHhD4iyCeFXkZczOIymwlH
	fehz3EdRK+HD78TTjhKDqV7Dvl/CjBMl8yC/1AgHjJnQGijcdT+lvPqqrSd44LC5J
X-Gm-Gg: ASbGncufQXDnchbJW4STZ54/Jqn8hzcFalIx6/DUC1141dNdc2fQwI+J2qNJDSJtUSN
	hijRV+4LmlR30gV2oLLgHjYyGEHdyAn9BZHHaEWzKWZG9BFjypm6MuYt/Q0Nkv2quuT9Ca/IEXc
	xhx83Z5igNjCAFyvIjp+1OUmNrblrVl06/BdrKwWvnz/tWMa9D5xtwUvMQIBP5LcJgPTYcRGeRn
	0OxGOmYm9y+dtgkf+6SdPqwOtkvzh0lV50ymtI3AsjzpqW58TK8yar5cT8OI+4KSsYLujL8tlky
	y3SlxgwnXJ3s2g28HpIPwtdgWnRxfEs=
X-Received: by 2002:ac8:5e4e:0:b0:463:5517:ffdf with SMTP id d75a77b69052e-46355180066mr29516081cf.16.1731597931047;
        Thu, 14 Nov 2024 07:25:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhRByPw5EKbcCygzJSeTHFTucdQZ7slWUPQDlZW+UZ6sjz9iRDzTlgGCHFVd6ZGQW1YCrwpw==
X-Received: by 2002:ac8:5e4e:0:b0:463:5517:ffdf with SMTP id d75a77b69052e-46355180066mr29515961cf.16.1731597930690;
        Thu, 14 Nov 2024 07:25:30 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf79a44a9dsm700093a12.0.2024.11.14.07.25.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 07:25:30 -0800 (PST)
Message-ID: <abf5b78f-95d6-44e6-93f6-616178ad328d@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 16:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Qiang Yu <quic_qianyu@quicinc.com>, Johan Hovold <johan@kernel.org>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, kw@linux.com,
        lpieralisi@kernel.org, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        johan+linaro@kernel.org
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-6-quic_qianyu@quicinc.com>
 <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
 <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
 <c558f9eb-d190-4b77-b5a3-7af6b7de68d8@quicinc.com>
 <ZzOQi0PpRZYts-B0@hovoldconsulting.com>
 <ef37236d-8856-4981-82fa-c0194d7b3dfc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ef37236d-8856-4981-82fa-c0194d7b3dfc@quicinc.com>
X-Proofpoint-ORIG-GUID: dNCqCg2zuv1kbeVu9vl_i1nvbCTJ8Wx9
X-Proofpoint-GUID: dNCqCg2zuv1kbeVu9vl_i1nvbCTJ8Wx9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 adultscore=0
 clxscore=1015 mlxlogscore=980 mlxscore=0 phishscore=0 bulkscore=0
 malwarescore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_152634_509983_C03F7572 
X-CRM114-Status: GOOD (  17.79  )
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

T24gMTMuMTEuMjAyNCA0OjE1IEFNLCBRaWFuZyBZdSB3cm90ZToKPiAKPiBPbiAxMS8xMy8yMDI0
IDE6MjkgQU0sIEpvaGFuIEhvdm9sZCB3cm90ZToKPj4gT24gTW9uLCBOb3YgMTEsIDIwMjQgYXQg
MTE6NDQ6MTdBTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6Cj4+PiBPbiAxMS81LzIwMjQgMToyOCBQ
TSwgUWlhbmcgWXUgd3JvdGU6Cj4+Pj4gT24gMTEvNC8yMDI0IDEwOjM1IFBNLCBKb2hhbiBIb3Zv
bGQgd3JvdGU6Cj4+Pj4+IE9uIFRodSwgT2N0IDMxLCAyMDI0IGF0IDA4OjA5OjAyUE0gLTA3MDAs
IFFpYW5nIFl1IHdyb3RlOgo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzID0g
PDB4MDEwMDAwMDAgMHgwIDB4MDAwMDAwMDAgMHgwIDB4NzgyMDAwMDAgMHgwCj4+Pj4+PiAweDEw
MDAwMD4sCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MDIwMDAw
MDAgMHgwIDB4NzgzMDAwMDAgMHgwIDB4NzgzMDAwMDAgMHgwCj4+Pj4+PiAweDNkMDAwMDA+LAo+
Pj4+PiBDYW4geW91IGRvdWJsZSBjaGVjayB0aGUgc2l6ZSBoZXJlIHNvIHRoYXQgaXQgaXMgaW5k
ZWVkIGNvcnJlY3QgYW5kIG5vdAo+Pj4+PiBqdXN0IGNvcGllZCBmcm9tIHRoZSBvdGhlciBub2Rl
cyB3aGljaCBpbml0aWFsbHkgZ290IGl0IHdyb25nOgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MDcxMC10b3BpYy1iYXJtYW4tdjEtMS01ZjYz
ZmNhOGQwZmNAbGluYXJvLm9yZy8KPj4+IEJUVywgcmVnaW9ucyBvZiBQQ0llNmEsIFBDSWU0LCBQ
Q0llNSBhcmUgNjRNQiwgMzJNQiwgMzJNQiwgcmVzcGVjdGl2ZWx5Lgo+Pj4gV2h5IHJhbmdlIHNp
emUgaXMgc2V0IHRvIDB4MWQwMDAwMCBmb3IgUENJZTZhLCBhbnkgaXNzdWUgaXMgcmVwb3J0ZWQg
b24KPj4+IFBDSWU2YT8KPj4gVGhhbmtzIGZvciBjaGVja2luZy4gSXQgc2VlbXMgdGhlIHBhdGNo
IGxpbmtlZCB0byBhYm92ZSB3YXMgYnJva2VuIGZvcgo+PiBQQ0llNmEgdGhlbi4KPj4KPj4gV2Ug
ZGlkIHNlZSBQQ0llNSBwcm9iZSBicmVha2luZyBkdWUgdG8gdGhlIG92ZXJsYXAgd2l0aCBQQ0ll
NCBidXQgdGhlCj4+IHBhdGNoIHByZWRhdGVzIFBDSWU1IHN1cHBvcnQgYmVpbmcgcG9zdGVkIGFu
ZCBtZXJnZWQgc28gaXQgd2FzIHByb2JhYmx5Cj4+IGp1c3QgYmFzZWQgb24gaW5zcGVjdGlvbi4K
Pj4KPj4gQ291bGQgeW91IHNlbmQgYSBmaXggZm9yIFBDSWU2YT8KPiBTdXJlLCB3aWxsIHNlbmQg
dGhlIGZpeC4KClNvIHRoZSBwYXRjaCBJIHBvc3RlZCBtYWRlIGl0IG1hdGNoIHRoZSBEU0RUL1dp
bmRvd3Mgc3RhdGUuIEkgYXNzdW1lZAp0aGVyZSBtdXN0IGhhdmUgYmVlbiBzb21ldGhpbmcgd3Jv
bmcgYXMgZG9jcyBzdWdnZXN0ZWQgdGhlIHZhbHVlIHRoYXQgeW91CmRpZC4KCkJ1dCBib3RoIHdv
cmsuIEluIGNhc2UgYW55IGlzc3VlcyBwb3AgdXAsIHdlIGNhbiByZXZpc2l0IHRoaXMuCgpLb25y
YWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
