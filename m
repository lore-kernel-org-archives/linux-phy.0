Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8400D3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 21:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeemzPQC8TdptwXjGasPiUKwO64XR+3042U+NhG72zM=; b=pH+Sxi6SNZON1t
	1m3xQa2ZbHMLlOcgoCELaImPaDqn6WNLLRbSgR8Y0Dg/rSu9Akx5vlUPtXWgLXHT3ROxMPcKUhEVp
	6zkeix5mxzrmzCZZNuAXVl9XgWVsIuWFLix5AJ+LjFyk2ZehpxgZDK94d5xqrRhJMm82LhP4YrOSZ
	N9zDNQnAL253XpOc6Lrgm4jszDOVFxPzoY2czChMYpdF3deRYujTiFdgOfyIKN3hD8NuavjBbEIHA
	XtK/fSseU7THNiDfLarCMBphxIOVIWP0a7eSphB/yCls3pgjUbE6Cgjf1gosPQSF7x4hbAsahhvfA
	3F5wuZXY2yDrZD3TkbZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSjA2-0000000DZ5O-01uy;
	Mon, 08 Dec 2025 21:52:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSj9y-0000000DZ4z-3uQp
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 21:52:48 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8IceIC459746
	for <linux-phy@lists.infradead.org>; Mon, 8 Dec 2025 21:52:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oqTS0Tct4IrdjazqxdZHqMaIuUGqzq8Y7NDwmG+AE5g=; b=pK8dULURYSuVFl9q
	i2m7FchacIfi1bUy8oihubHk9r7aTvURQo62evM6yKDco4Pt+iqA8Upjnqdg6RWf
	DauZbku9j0kdd9WnCImaNWLpzcL8I1gcx98ZyCDrsvReERlUdZdJ7WhEYtiVzPi/
	q7f6lFG8hi9xl4yPSLYcTxB2693XcR+9BDQQrpEiccO+RW94GjYLuctZHhM56YG6
	wf2Mc9zG4hifJ1dY11/xkvlObpSazFS808bwXdywwhxGp9GkAgc+gnAPcok3eOm3
	JUZOlED2kk96HhzC2N+mQMF5HlirOvoUhx2F/txO8dM8OJXPSFZ1KtdQq1muJ0Gq
	kFnLDg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awwgmhuff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 21:52:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eff973c491so108850141cf.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 13:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765230764; x=1765835564; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oqTS0Tct4IrdjazqxdZHqMaIuUGqzq8Y7NDwmG+AE5g=;
        b=NWzLrdz2w4NNpaSd0H5D1zxYvlqOp9RMh0U2G4sQ12ybELIN7W6iLWaDI6s72c20vf
         R5/kwwYaI+9H5xCO+RyXlnemKmzUldGLvA7DzkroLJpRf1YQZvazhrgIIIZbVSTufYXI
         Ei/8upMiEmQ3gKC0oe2MqyyEfG/zh0OqwpKzzTglKB1g9ywjC6ZxZV2FgGEk2mHX36l2
         3bHLyeDklP/DWOV0pPpxMJATL0x2d2SdpPVENK+id3BBuq+go+JL58RwPPSY4AjW9rxB
         1u8m6FfvqpcM75PUCtQX9OYeYnI4jhrzMzdw/BgbOjoDn6s2k0qdyVunm0NjU5ToJBn2
         v/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765230764; x=1765835564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oqTS0Tct4IrdjazqxdZHqMaIuUGqzq8Y7NDwmG+AE5g=;
        b=cnNQyR9iJqMrXp+H5zYrU6s8fBOACrIKovKywq2hZNbm/RVkWvTwJlm9DLkiTZ8fyg
         lAOF7GQROjBrAypM4HjTiTkFPsFZcYMl/A+5dVTEF39r/LcMDfwQA4XANDuwsLOWNRXU
         iz4KJj7+ri9pipGI47PmhhwTC6Mk/HjzlEBHNJTwyYPUyUxqSRgq3ktRf90ENHcGokCp
         6FcGchW3u31/m/XNo4otUvZbH/gODZLgSVSmL73gxhfwdtnp+T0czoZONYidoaReP/d1
         kAkPLzw7mqTJ4ZZ0Slmbn5iX3R8lHo+N7TnEp1qmk8jHO5cSDhv47XzCKHN3ckDPF/Sj
         0O5g==
X-Forwarded-Encrypted: i=1; AJvYcCXdHmBKKWftkZs1NYD7+7tOz2BSJGZMzc8/qVWriOoEsUPTzPflV/4WXF8eiQFCFIEGZY/dZijBnvI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlhKiiTmOnjb0TQQg7w1UVVb3N2ir/zIF8qYclYi2yQ5YtEtTw
	pmZpY4ln/WOoM0Lm2HZ2he1ucGUHzVl9va4RKzNPxQgY7V8VRZVMhvuVCO5MwBZx/9CKJcsHNtg
	IjSqJ/E87dnRRbq1aFF51zpJFuBVAQ38wbi6MBt+OaUFqcHwNEaAIqxiY7sF0cfkB4WKcUf5Gpq
	/gsMjaoXprsomvSz49cUZHqZcEkt9PiV8UfETs/j07V/0t3OXAeecv9w==
X-Gm-Gg: ASbGncvAX47POXW/09HPpEtSGTZSO9yuha56iMXExfGe5dgQNHPLzb00Yj8VhAiwsq3
	y9YL35wf/ajCTOC4koWktZFEW6DfIJCP4lKHXZOMajQ5nS/Ld/QRI32r5BCg71mZvbhHQcGvv8/
	e8V4xPEoqV1Qn4bvH7AD6ltULgVs+wH6e8OzUQjakpGp63iAnRpNyBAtQIc5B8G2GB5y7t6VcRC
	SZqPriMJ+N1Va4yAm/TK6BHEqLO
X-Received: by 2002:a05:622a:1104:b0:4ee:26bd:1401 with SMTP id d75a77b69052e-4f03ff1618fmr131974581cf.72.1765230763890;
        Mon, 08 Dec 2025 13:52:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQlY/xxqaC1fvA0toKGgeuU6suJgg5SATcyujgCwrFMEU0vwqsl/RTELFWVdraPRMaak4uD+Sop1eVlj64uQo=
X-Received: by 2002:a05:622a:1104:b0:4ee:26bd:1401 with SMTP id
 d75a77b69052e-4f03ff1618fmr131974361cf.72.1765230763455; Mon, 08 Dec 2025
 13:52:43 -0800 (PST)
MIME-Version: 1.0
References: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com> <r33k3aif4lzwfwashvkstqbxyncrr2yrtqejobfj6pm65wasi3@gyy3zex3u7lx>
In-Reply-To: <r33k3aif4lzwfwashvkstqbxyncrr2yrtqejobfj6pm65wasi3@gyy3zex3u7lx>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 22:52:30 +0100
X-Gm-Features: AQt7F2p0VmA_IkuQAYSme4kXiXphTi6Hr3cSIsncWSFubbCfhMpb33g5YfAbq3Y
Message-ID: <CAFEp6-3Gv_F7RZD=b_aXfwFdM-mR7xh1DcO=efnmNy1ZaT738A@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Bjorn Andersson <andersson@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com
X-Authority-Analysis: v=2.4 cv=RtnI7SmK c=1 sm=1 tr=0 ts=693748ad cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Ily-Lp4ULqXFMyuIuh4A:9 a=QEXdDO2ut3YA:10 a=-_B0kFfA75AA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: KCZkOnmlvIwdMhjozyZKIO1t56GS7K0X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE4NSBTYWx0ZWRfXyZ3uhhNS5Lhx
 I1UoyncqD/TDLF7E/Ty4ZRkhHTb4I7nRGqswqPCMb5J6pHQ/PweuPtjl/83PCoiUwKA9G81+UAV
 Vb+cilQNWXPnUw3pl75PQ7IkKoeyAvfVLLxUMuS0V3uL2XWtvc7m9mirM2wvH7L6+UxN8vzac3X
 47JntF9siqDmrgX9w+hwNWZt6YpeIdIwZBkEN6zsu1+bfm7ftkwg1pmCrsyqqSNyJXDlrHWcL0d
 KvhwR4l0gb8gwnk6Jdy2Oj5+SnGB8GRBLn5JOi4SYrCAm+YdAbVoAzi/DP1mprINzgOuPG0GxP1
 HhiqWi9zMkVcWTez/0Cp8zzrFULiRFS9g2EAgn/aqAp5cwzj0MUnZEZwN66JF3sefeTRG6rOGg5
 EXi3QC/wLTJpnDX0+1bLvx+ZVqnMOQ==
X-Proofpoint-GUID: KCZkOnmlvIwdMhjozyZKIO1t56GS7K0X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_135247_006541_40634C61 
X-CRM114-Status: GOOD (  34.98  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCAxMDozMOKAr1BNIEJqb3JuIEFuZGVyc3NvbiA8YW5kZXJz
c29uQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBEZWMgMDUsIDIwMjUgYXQgMDU6MDQ6
MzdQTSArMDEwMCwgTG9pYyBQb3VsYWluIHdyb3RlOgo+ID4gUmVvcmRlciBydW50aW1lIFBNIHNl
dHVwIHRvIGVuc3VyZSBwbV9ydW50aW1lX2ZvcmJpZCgpIGlzIGFwcGxpZWQgYmVmb3JlCj4gPiBl
bmFibGluZyBydW50aW1lIFBNLgo+Cj4gWW91ciBjb21taXQgbWVzc2FnZSBpcyBwcmV0dHkgZ29v
ZCwgYnV0IGluIHRoZSBmdXR1cmUgcGxlYXNlIGNvbnNpZGVyCj4gZm9sbG93aW5nIHRoZSBkb2N1
bWVudGF0aW9uIFsxXSBhbmQgcmVhbGx5IHN0YXJ0IHlvdXIgY29tbWl0IG1lc3NhZ2UgYnkKPiBl
c3RhYmxpc2hpbmcgdGhlIHByb2JsZW0uIFRoZSAibW9zdCBzaWduaWZpY2FudCBiaXQiIG9mIHlv
dXIgY2hhbmdlCj4gcmVxdWVzdCBpc24ndCAibGV0J3MgcmVvcmRlciBzb21ldGhpbmciLCBpdCdz
IHNvbWV0aGluZyBhbG9uZyB0aGUgbGluZQo+IG9mICJlbmFibGUgYmVmb3JlIGZvcmJpZCBjYW4g
cmVzdWx0IGluIGF1dG9zdXNwZW5kLCB3aGljaCByZXN1bHRzIGluCj4gTlVMTCBwb2ludGVyIGRl
cmVmZXJlbmNlIi4KPgo+IFsxXSBodHRwczovL2RvY3Mua2VybmVsLm9yZy9wcm9jZXNzL3N1Ym1p
dHRpbmctcGF0Y2hlcy5odG1sI2Rlc2NyaWJlLXlvdXItY2hhbmdlcwo+Cj4gPiBUaGlzIGF2b2lk
cyBwb3NzaWJsZSBlYXJseSBhdXRvc3VzcGVuZCBhbmQgcHJldmVudHMKPiA+IHF1c2IyX3BoeV9y
dW50aW1lX3N1c3BlbmQoKSBmcm9tIGJlaW5nIGNhbGxlZCBiZWZvcmUgZHJpdmVyIGRhdGEgaXMK
PiA+IGluaXRpYWxpemVkLCB3aGljaCBjb3VsZCBvdGhlcndpc2UgbGVhZCB0byBhIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZToKPiA+Cj4gPiBgYGAKPiA+IFVuYWJsZSB0byBoYW5kbGUga2VybmVs
IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAw
MDBhMQo+ID4gWy4uLl0KPiA+IENQVTogMCBVSUQ6IDAgUElEOiAxMSBDb21tOiBrd29ya2VyLzA6
MSBOb3QgdGFpbnRlZCA2LjE2LjcrICMxMTYgUFJFRU1QVAo+ID4gV29ya3F1ZXVlOiBwbSBwbV9y
dW50aW1lX3dvcmsKPiA+IHBzdGF0ZTogMjAwMDAwMDUgKG56Q3YgZGFpZiAtUEFOIC1VQU8gLVRD
TyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+ID4gcGMgOiBxdXNiMl9waHlfcnVudGltZV9zdXNwZW5k
KzB4MTQvMHgxZTAgW3BoeV9xY29tX3F1c2IyXQo+ID4gbHIgOiBwbV9nZW5lcmljX3J1bnRpbWVf
c3VzcGVuZCsweDJjLzB4NDQKPgo+IElmIHlvdSBwaXBlIHRoZSBsb2cgdGhyb3VnaCAiLi9zY3Jp
cHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXggLiAuIgo+IHdlIGdldCB0aGVzZSBkZWNv
ZGVkLgo+Cj4gQnV0IHRoYXQgc2FpZCwgSSdtIHByZXR0eSBzdXJlIHRoYXQgd2hhdCBmYWlscyBp
cyB0aGUgYXR0ZW1wdCB0byBwdWxsCj4gY2ZnIG91dCBvZiBOVUxMIG9uIHRoZSBzZWNvbmQgbGlu
ZT8KCk5vdCBleGFjdGx5LiBUaGUgYWN0dWFsIE5VTEwgZGVyZWZlcmVuY2UgaGFwcGVucyBvbiBs
aW5lIDc6CiAgICBpZiAoIXFwaHktPnBoeV9pbml0aWFsaXplZCkgewpJIGFzc3VtZSB0aGUgc2Vj
b25kIGxpbmUgaXMgb3B0aW1pemVkIGFuZCB0aGUgY29tcGlsZXIgZGVmZXJzIHRoZSBsb2FkCnVu
dGlsIGNmZyBpcyBhY3R1YWxseSB1c2VkLgoKVGhpcyBpcyB3aGF0IEkgZ290IHdoZW4gZGVidWdn
aW5nIHRoaXM6Ci9zY3JpcHRzL2ZhZGRyMmxpbmUgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcXVzYjIua28KcXVzYjJfcGh5X3J1bnRpbWVfc3VzcGVuZCsweDE0CnF1c2IyX3BoeV9ydW50
aW1lX3N1c3BlbmQrMHgxNC8weDFlMDoKcXVzYjJfcGh5X3J1bnRpbWVfc3VzcGVuZCBhdCBkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jOjYzOQoKPgo+ID4gWy4uLl0KPiA+IGBg
YAo+ID4KPiA+IEZpeGVzOiA4OTFhOTZmNjVhYzMgKCJwaHk6IHFjb20tcXVzYjI6IEFkZCBzdXBw
b3J0IGZvciBydW50aW1lIFBNIikKPiA+IFNpZ25lZC1vZmYtYnk6IExvaWMgUG91bGFpbiA8bG9p
Yy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xdXNiMi5jIHwgOSArKysrKy0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcXVzYjIuYwo+ID4gaW5kZXggYjU1MTRhMzJmZjhmLi45N2JjMzc1NWEzOTAgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiBAQCAtMTA5Mywx
MyArMTA5MywxNCBAQCBzdGF0aWMgaW50IHF1c2IyX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICBvci0+aHNkaXNjX3RyaW0ub3ZlcnJpZGUg
PSB0cnVlOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAgIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZShk
ZXYpOwo+ID4gLSAgICAgcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiA+ICsKPgo+IERvZXNuJ3Qg
dGhpcyBlbmQgdXAgYmVpbmcgdHdvIGJsYW5rIGxpbmVzPwoKSG1tLCB5ZXMgZ29vZCBjYXRjaC4K
Cj4KPiA+ICAgICAgIC8qCj4gPiAtICAgICAgKiBQcmV2ZW50IHJ1bnRpbWUgcG0gZnJvbSBiZWlu
ZyBPTiBieSBkZWZhdWx0LiBVc2VycyBjYW4gZW5hYmxlCj4gPiAtICAgICAgKiBpdCB1c2luZyBw
b3dlci9jb250cm9sIGluIHN5c2ZzLgo+ID4gKyAgICAgICogRW5hYmxlIHJ1bnRpbWUgUE0gc3Vw
cG9ydCwgYnV0IGZvcmJpZCBpdCBieSBkZWZhdWx0Lgo+ID4gKyAgICAgICogVXNlcnMgY2FuIGFs
bG93IGl0IGFnYWluIHZpYSB0aGUgcG93ZXIvY29udHJvbCBhdHRyaWJ1dGUgaW4gc3lzZnMuCj4K
PiBJIHRoaW5rIHRoaXMgd2FycmFudHMgYWRkaW5nICJUT0RPOiBSZW1vdmluZyB0aGUgcG1fcnVu
dGltZV9mb3JiaWQoKQo+IG1pZ2h0IGFsbG93IGF1dG9zdXNwZW5kIHRvIGludm9rZSBxdXNiMl9w
aHlfcnVudGltZV9zdXNwZW5kKCkgdG8KPiBkZXJlZmVyZW5jZSB0aGUgTlVMTCBkcnZkYXRhIiBo
ZXJlLgo+Cj4KPiBCdXQsIGlmIHdlIGtub3cgd2hhdCB0aGUgcHJvYmxlbSBpcywgcGVyaGFwcyB3
ZSBzaG91bGQganVzdCBmaXggaXQgcmlnaHQKPiBhd2F5Pwo+Cj4gTG9va3MgbGlrZSB0aGUgZml4
IGZvciB0aGUgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlzIHRvIG1vdmUgdGhlCj4gZGV2X3Nl
dF9kcnZkYXRhKCkgYW5kIHBoeV9zZXRfZHJ2ZGF0YSgpIGFib3ZlIHRodXMgaHVuay4KPgo+IEFu
ZCB0aGUgInByb2JsZW0gc3RhdGVtZW50IiBzdGF0aW5nIHdoeSB3ZSdyZSBkb2luZyB0aGlzIGNo
YW5nZSAod2hpY2gKPiBzdGlsbCBtYWtlcyBzZW5zZSkgaXMgdGhhdCAiYSB3YXN0ZWZ1bCBhdXRv
c3VzcGVuZCBtaWdodCBoYXBwZW4gYmV0d2Vlbgo+IHBtX3J1bnRpbWVfZW5hYmxlKCkgYW5kIHRo
ZSBwbV9ydW50aW1lX2ZvcmJpZCgpIi4KClRoYXQncyBjb3JyZWN0LiBNeSBpbml0aWFsIGxhenkg
YXBwcm9hY2ggd2FzIGEgYml0IHNpbXBsaXN0aWMsIGp1c3QKc3dhcHBpbmcgcG1fcnVudGltZV9l
bmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSB0byBpbmRpcmVjdGx5CnByZXZlbnRzIHRo
ZSBOVUxMIGRlcmVmZXJlbmNlIGJ5IGF2b2lkaW5nIHJ1bnRpbWUgc3VzcGVuZCwgYnV0CmlkZWFs
bHksIHdlIHNob3VsZCBhcHBseSBib3RoLCBzd2FwIHRoZSBjYWxscyB0byBwcmV2ZW50IHVubmVj
ZXNzYXJ5CnN1c3BlbmQsIGFuZCByZW9yZGVyIHRoZW0gd2l0aCBkZXZfc2V0X2RydmRhdGEoKSB0
byByZXN0b3JlIHByb3Blcgppbml0aWFsaXphdGlvbiBsb2dpYy4gPT4gV2lsbCBkbyB0aGlzIGlu
IHYyLgoKTm90ZSB0aGF0IE9uY2UgdGhpcyBjaGFuZ2UgaXMgYWNjZXB0ZWQsIEkgcGxhbiBhIHNl
cmllcyB0byByZXBsaWNhdGUKdGhlIGZpeCBpbiBvdGhlciBQSFkgZHJpdmVycyB0aGF0IGV4aGli
aXQgdGhlIHNhbWUgaXNzdWUgKGUuZy4sCnBoeS1xY29tLXFtcC11c2JjLCBwaHktcWNvbS1xbXAt
Y29tYm8sIGV0Yy4pLgoKVGhhbmtzLApMb2ljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
