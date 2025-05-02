Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78B06C3ABAA
	for <linux-phy@archiver.kernel.org>; Fri,  2 May 2025 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umJwQ33ZI1lHSTI12WJjkBibppkR+6AJ8hdWlU2KnFQ=; b=q3bpbSdRHrDpU2
	yqPpt+0cO0Lu6FLVWyjLSFvkvC3cakrwn9tIVI5COnNXBB0d7EVCrlqvfi5+kK/RFjqIkbfBwQeUg
	bKUDJRdSxveriy5P9IIK00l/+/jN6LeAMoI5k4hDOp7fZkMocmcytEN5pIsi9GyWwli4qH/7Fs6V5
	F9Ekf1fBNSrprVBYAl1QhEEUaOc37ZVaurngZ/wYtJ1Ny2xIReD3xt7vlmfPulPwpzWdXgQyZmQV8
	QKsJgAR31tXGpXRUZWgunqJGI0v+BBdxKlj2KXkuYc3lPayTt0z/PwW4Rx0VHGsHiQ2PgL69v3dWa
	MlUCqJ4yHxnEV/rEdMMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAqkH-000000026Mc-0HqB;
	Fri, 02 May 2025 13:48:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAqdq-000000025NB-1jIW
	for linux-phy@lists.infradead.org;
	Fri, 02 May 2025 13:41:27 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421MsiM009017
	for <linux-phy@lists.infradead.org>; Fri, 2 May 2025 13:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tRa0e6yzESCL53RBCKhEahi2ua9XrR9IpLFLe64y6t8=; b=XBBuYMPforHmAtBm
	H5FIgiWGFHx/rirNgvHm8uCpeP3+W5XiGVJAXgcJ196ov/SKhH53jJ75c410K0jy
	olIo9OcfhiF122ZpZZ7CCdCeBBWcBIWdpHCOGPOhdFjuR4HtChTx9daNEozpI2GD
	6unYvAglJlNodLjKJ2FFhqZwiYWfaokeucGYLum/IRvKEAwBTs5RlPRLBpM61FrK
	eOuC7/EJpiPiOpPzB2xZ6gba1pzo8a6akiCUJWig/l1yzoJLHKbNdAbH+cHp/Fvu
	Bm3YJLTfexs50TRYMp+z8w2pxLHuNzp7+883322cLXDiPv7vFEIlKniZxK+pgNcb
	yE4PWA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubrgn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 02 May 2025 13:41:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5ad42d6bcso48563985a.2
        for <linux-phy@lists.infradead.org>; Fri, 02 May 2025 06:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746193284; x=1746798084;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tRa0e6yzESCL53RBCKhEahi2ua9XrR9IpLFLe64y6t8=;
        b=XCZY1j8LGpvMAikkH2FSnBLsAdUQVWVYVfIZHSGHhGINoel+nF0/XLCbkcnErfHJx/
         EBFEYoSwTB9dyPaEBwHv1HMeNR8oxGqzGWsNshNwGrHOLM45mx58vMphUn3TFna8OVMO
         eD5ThYdiv+oSzKqAJ2cWrFrvd760xgrxnmjoSh6DmhYkHSxdiMsD2FcOfSutTtRK1g1H
         uCAKv3Ed+aq2GdrTzNl7DF7Hk9MtkaRzHJfj8Okyivx/mGk7tQ4l9HI9ySSQP5uQAeeJ
         fvu3gvr3L/d1jntteJyp2pLQyLlABE98/aN/1ng+fsyUwpERjtMgdaa633sRhDRwMO5T
         uSAg==
X-Forwarded-Encrypted: i=1; AJvYcCX9wx7wB5cXHgSB4HPblKU5gh1gPqgEZt7vo8nbFy5qqMsg2Q1BzhnqZ1PfDiDRUwAS4mYCOFqufYY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAkIfgUfM5z0knBlAahGsZjz7Ieko7ZdNar5y1zLzgkqG/+Yvx
	FnRkLgApCgMnJH0lOyJ77GUGKB6OS5SinhhYznKytVMMS/z+LTI6Ze/A0z/uSEMVn4izyeu1bZ9
	iameTDVTESjP4xBhfEGC+DORSfoGIlFCqrv/UnUcOjEHErynmglRsheERfQZ3xbWd
X-Gm-Gg: ASbGncuBQYyYjpmfAWOhGHBfUhQmQBLaNtl2okN1nKl2xZlf/dPArQN3lqxd3G1I0Eo
	pt75kCct9RY8emyBbwkjoqIxDSprc2Knx/nKNR3ucCs+XhfnWekcu9JRgdzcgNIusoj1CvIQ8B+
	3u6XRjNCmxEdqBFScwNY25m+uH+x2yaHl4pr5DlMdluEa0NEgLpwi8Fl4WgE1VfuqoJYinW90AE
	Uy+6I3CChYt86/7Sou9RlBybLKvWSrn2uNiogJjc8YZeVwzdTl9aCOI2LVTsRkyfV2oGJ2UZRug
	A0wKbt9MJP9DtznQebhuPiFQJ2AB40XdvDwtNPDU/NZji787anSXZqC59vQ6UnjZpqw=
X-Received: by 2002:a05:620a:4252:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cad5b386c6mr117518485a.4.1746193283749;
        Fri, 02 May 2025 06:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfDTzMBbUFb5N3T6kjUkUukjjuCz2lS26RtjyWTZXBYvPjhKFgERakqZQ1lYamKTv/P1YcxQ==
X-Received: by 2002:a05:620a:4252:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cad5b386c6mr117516085a.4.1746193283175;
        Fri, 02 May 2025 06:41:23 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0363sm50718166b.121.2025.05.02.06.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 06:41:22 -0700 (PDT)
Message-ID: <f6d9b03d-3870-494d-b97f-b0487927c9d3@oss.qualcomm.com>
Date: Fri, 2 May 2025 15:41:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
 <tqzmof6rq7t7k3jbdmay7dplz7el3c6i3ehesdiqnp7iq5f7ul@3lnf3awj7af5>
 <CAMyL0qMQCGE-JNwTjqJk8TrGLBDr_1W7Sv_nECkW9Xp1fXgeuw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMyL0qMQCGE-JNwTjqJk8TrGLBDr_1W7Sv_nECkW9Xp1fXgeuw@mail.gmail.com>
X-Proofpoint-GUID: xAIvinYTE5sfIog5bOxdePVCDKbdqO7O
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=6814cb84 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=2aamsdQwrFB3mmDgIHkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwOSBTYWx0ZWRfXze2LfWtwXN2T lqjhH9kXLDIMy/nt4/m1mndp/Qwrb4I6BHnoFrRLsEWMNSSvU+XwEjtgcuzuGLBIQ9wDz3NkIbD mMp0TAFjKfb6O352tm8VHIXj2xb5F+T1WDJziN94ObE0glMoxt6h/EQQYTFWPFpw9xL+LQWt5tJ
 l1ntLhy76A/LuM/De+DnkStTQlmVlmkvZqB7fOz384vjF7Z++f8S84RGCAu7MdTAiYl9h9bnBh5 iqw5rWfazPrDBLj0bmpvwLeJLQg4KlIdYAtKGeewahPTcC0AbeJdKKMPc/fsw0iaNR3ZdEw3SNQ Qvq+Cr5q1CHeI+lTB6N8GHW0lC8VNV03a2WFgl2UL8VdXfCgCWCZjlRq27+CZvjslu4BjWxRUm1
 Nh0B1441/wxZMPW2yvsktRTWyYiPfTGXlVwALNRVXhJFtOKxMESDgTBpUe0zSb+WM3POHzUB
X-Proofpoint-ORIG-GUID: xAIvinYTE5sfIog5bOxdePVCDKbdqO7O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_064126_588084_71E91F21 
X-CRM114-Status: GOOD (  18.78  )
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

T24gNS8yLzI1IDI6MjUgUE0sIE1yaW5tYXkgU2Fya2FyIHdyb3RlOgo+IE9uIFdlZCwgQXByIDIz
LCAyMDI1IGF0IDc6MDfigK9QTSBEbWl0cnkgQmFyeXNoa292IDwKPiBkbWl0cnkuYmFyeXNoa292
QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+IAo+PiBPbiBXZWQsIEFwciAyMywgMjAyNSBhdCAw
NDo0NTo0M1BNICswNTMwLCBNcmlubWF5IFNhcmthciB3cm90ZToKPj4+IFRoaXMgY2hhbmdlIHVw
ZGF0ZXMgdGhlIFBIWSBzZXR0aW5ncyB0byBhbGlnbiB3aXRoIHRoZSBsYXRlc3QKPj4+IFBDSWUg
UEhZIEhhcmR3YXJlIFByb2dyYW1taW5nIEd1aWRlIGZvciBib3RoIFBDSWUgY29udHJvbGxlcnMK
Pj4+IG9uIHRoZSBTQTg3NzVQIHBsYXRmb3JtLgo+Pgo+PiBQbGVhc2UgcmVhZCBEb2N1bWVudGF0
aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCwgbG9vayBmb3IKPj4gJ1tUaGlzIHBh
dGNoXSBtYWtlcyB4eXp6eScuCj4+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTXJpbm1heSBTYXJr
YXIgPG1yaW5tYXkuc2Fya2FyQG9zcy5xdWFsY29tbS5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jICAgICAgICAgICB8IDg5Cj4+ICsrKysr
KysrKysrKy0tLS0tLS0tLS0KPj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNzLXBjaWUtdjVfMjAuaCB8ICAyICsKPj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtcGNzLXY1XzIwLmggICAgICB8ICA0ICsKPj4+ICAuLi4vcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1xc2VyZGVzLWxuLXNocmQtdjUuaCB8IDExICsrKwo+Pj4gIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC5oICAgICAgICAgICAgICAgIHwgIDEgKwo+Pj4gIDUgZmlsZXMg
Y2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gQEAgLTMx
OTEsNiArMzE5NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BjaWVfb2Zmc2V0cwo+PiBx
bXBfcGNpZV9vZmZzZXRzX3Y1XzIwID0gewo+Pj4gICAgICAgLnJ4ICAgICAgICAgICAgID0gMHgw
MjAwLAo+Pj4gICAgICAgLnR4MiAgICAgICAgICAgID0gMHgwODAwLAo+Pj4gICAgICAgLnJ4MiAg
ICAgICAgICAgID0gMHgwYTAwLAo+Pj4gKyAgICAgLmxuX3NocmQgICAgICAgID0gMHgwZTAwLAo+
Pj4gIH07Cj4+Cj4+IFRoaXMgZG9lcyBtb3JlIHRoYW4ganVzdCB1cGRhdGluZyBQSFkgc2VxdWVu
Y2VzLiBsbl9zaHJkLXJlbGF0ZWQgY2hhbmdlcwo+PiBzaG91bGQgZ28gaW50byBhIHNlcGFyYXRl
IGNvbW1pdC4KPj4KPj4gICAgIEhpIERtaXRyeSwKPiAgICAgdGhhbmtzIGZvciB0aGUgcmV2aWV3
Lgo+ICAgICBBY3R1YWxseSBpbiB0aGUgcHJldmlvdXMgcGh5IHZlcnNpb24gdGhlcmUgd2FzIG5v
IGxuX3NocmQgcmVsYXRlZAo+IHJlZ2lzdGVyIHdyaXRlLgo+ICAgICBhbmQgb25seSBvbmUgbG5f
c2hyZCByZWxhdGVkIHJlZ2lzdGVyIHdyaXRlIGludHJvZHVjZWQgdG8gdGhlIGxhdGVzdAo+IHBo
eSB2ZXJzaW9uLgo+ICAgICBzbyBpbnRyb2R1Y2UgYWRkZWQgbG5fc2hyZCB3aXRoIHBoeSB1cGRh
dGUuCj4gCj4gICAgIEkgd2lsbCBhZGQgYSBzZXBhcmF0ZSBjaGFuZ2UgZm9yIGxuX3NocmQuCgpJ
IHRoaW5rIGl0J3MgZmluZSB0byBjaGFuZ2UgdGhlbSBib3RoIGluIGEgc2luZ2xlIGNvbW1pdCwg
YnV0IHlvdSBzaG91bGQKZXhwbGFpbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCBwcmV2aW91
c2x5IG5vIHdyaXRlcyBoYXZlIGJlZW4gbWFkZQp0byB0aGF0IHJlZ2lvbiBzaW1wbHkgYmVjYXVz
ZSBub25lIHdlcmUgZGVlbWVkIG5lY2Vzc2FyeS4KClNwbGl0dGluZyB0aGF0IGludG8gdHdvIGNv
bW1pdHMgd2lsbCBnaXZlIHVzIGFuIHVucHJlZGljdGFibGUgcHJvZ3JhbW1pbmcKb2YgdGhlIFBI
WSwgd2hlcmUgbm90IGFsbCBwYXJhbWV0ZXJzIGFyZSBpbiBzeW5jLgoKVW5sZXNzIHRoYXQgc2Vw
YXJhdGUgY29tbWl0IHdvdWxkIGJlIGp1c3QgYWRkaW5nIHRoZSBvZmZzZXQgZGF0YSwgYnV0IEkK
dGhpbmsgdGhhdCdzIGZvcm0gb3ZlciBmdW5jdGlvbiByZWFsbHkKCktvbnJhZAoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
