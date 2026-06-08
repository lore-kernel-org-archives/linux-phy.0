Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68487CD8CAA
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQuh/kDjMqgeo4kno302GvH2Wp5973pI07kOaz0UZtg=; b=F1Y/1YKx2vAqcN
	W5KmFK17LVH2hOu2UowW7x+9V8nGZ/cYRVjUal/strA6Jw4QP64lMvKmCvR6rq/5eBHj42WUHxCr4
	D+o7qK0/S/c9TaNJxdc/0NiebxK5unh+iUajlry8p63mwfm+Jr0+yhZDSbAPDyJ5yKHow0RO1iE+c
	4K4wwYc4TESD+/W8EZgQzMd3jpe/aObBBHMAiQFXXVIpV8REcxY3O0Lr7CDDt1TOgeUWFYlw2wLrF
	402O+2cTCBmnvyUKHWThEoGD3wf1DspN0HrkCDYIvHTFX7TytVL+hvOYwoclG/PeQvqCGu4AUTyNb
	LAUkzdBQE2JPL6s2PlLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXTZ-00000003Luj-0vpM;
	Mon, 08 Jun 2026 10:45:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXTX-00000003LtV-0nhN
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:45:00 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658A3U4o2848183
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 10:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	41jb4hFcUfRoTHuONKjpdm59JB4WXIc01LJAry3rtD0=; b=nrDDqdenRSeY3pXx
	5CZfMJp/i7PtpoAor3mrjCDbtVylku7vRpGYm8pQjGrQ5nnm1l7ReHFEbNfZgq6z
	HylNp6B9dB7yZ3qrkfO4et2+s1SHMmMgAKrmJHwhjL648ISp58XxV5qkOc1Rxgd8
	+Nbuc7HfUv6QGrCYwCp/p/Bha4q+lFNEsZmHC3aFQQX9nNTBfGbdCyy1ErQfzITc
	+Ca4IqnWz9GaQ41zH+m6xU+MJdlUkGDMB7cPxG+e3C6HrHg6jZ8KqquFQWzijD0o
	VG+gzVFvpXiT/TU5tyfdy9Ng6E/g2s2jsQx7VZWvXsmNgTB20avQMhrWUvQGIkIC
	URIPwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enuna8619-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 10:44:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5178ded346eso7810061cf.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 03:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780915497; x=1781520297; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=41jb4hFcUfRoTHuONKjpdm59JB4WXIc01LJAry3rtD0=;
        b=YmMNLFO9siAWbO20DyxcU3A0ngt6Y4FyFgAfqoUVG4YIZONhfyes+jrgRRYccSsJAs
         5lYFWVuwqn11sV3+UfUO1sJk3idjY1UmnLL5SZ+sUHCq/JbzBCHr43igT9UFpxTIetM3
         fGQn/HpotrD6AQC3W3uUVUA9JGQc9vKmUDXp+gNGcefflmSkBxY66Il2hBkFHxRv8T8d
         3BR9dDzFrGXC6keABu4H+JxHAIzyg8HkDwCvMtOLzUs/TB02/9GqdU8/uPDMWHtmoisy
         4euBGDRGRsobp9mv9fJunoh1AZsXfBU9hHP3GB+zV9nlssNInL6znGZK//hA8VHTEz+E
         6vEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780915497; x=1781520297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=41jb4hFcUfRoTHuONKjpdm59JB4WXIc01LJAry3rtD0=;
        b=aVlSqWFSiM3Suc0LMYqVKIH/48DBINhcA616X3sYXgR+0EjfsjAGPMmi0Pxdqoyztj
         iL/zLwJmW9u6J6/6aM88zVf/QjzHTmsQtnuPmM1p3M3E5I6xEHLUTp3Kd7Mn4h69R07Q
         H+x8FuFlEkMU8qIaHj58IwGvvifu1QWScywjXGJDtL3sjQSj5pf/3sXEDShbaux9eVTV
         pmjMNcHgtjS3Hkh75MCN1Vl2AaCrUFK7KPVimf4KLNX3zNtf5lPDvYrW2z6Jh+Vgs8p/
         i4xsDr0K1fsli4UjrPXeuM3PktueJ7S4hN8+/DWYMjvk4BDIanLLk8SAvCclG6cBifgg
         vNSA==
X-Forwarded-Encrypted: i=1; AFNElJ/u3tHrCTHUD9W34D+BLAcHOCNsQqafnMyc+CgyTp4T7Ju4fsfxbDH8V9gXILToGfiXZJe5gJAONA0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyo61aHBrCAGPqCKp+ZscBxykALXgJQj7NUDSTjix88a6gMQsyV
	kc+G9/aUuaHR1elmE3pZQYq3bmzJVJnFKFM2dGyM382mqDwxwF1YonTOsocuH00RHSA72KOnzfZ
	IYzz8qeSmrCQ3vmf2irBHZfi7FlhsZtnE1cudus9+t44c1hg9qGdP5zFYW+i8Z3tnHmRG
X-Gm-Gg: Acq92OFQouexQjpN58PQMnUMO5itR1B72a5rcUqZ1BRLf8VQ6S0DrAzrN7aGCtdJxsB
	OfGHQb6/pjwaYlw2yqqZegMJFMyIb07ICL0Qzo21u8itMEPiGHarCHhmdjZQhd2HGIAbP6m9QY6
	i/82YhA+xx7c4auM+A9L74SrRo3zErI3Hll9yaS7KI1T21tBdt6DgaOotuDQFIxL610fpcCoTAF
	1tdWzkx2ZVmdoY70jl8IrWI8ygPY1jSRo/A+oe+wMiL0sn8CsuFrCGE+kTCIpvK+29W+mbmR84R
	c6Yq1M7poMiVDWiatJGFh5y8qeVeUb9h8u7xDdNkt3ax+kW17mE/M5gUG63Zl6Kfqk5cZQZnjGW
	0KrIgLvH+3oCiSVfXZ0c2XuDZlzqVOMBrNxSuztuMlT0Lppr00OrwhuBf
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr109931961cf.6.1780915496971;
        Mon, 08 Jun 2026 03:44:56 -0700 (PDT)
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr109931761cf.6.1780915496521;
        Mon, 08 Jun 2026 03:44:56 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65b58596sm6943544a12.30.2026.06.08.03.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 03:44:55 -0700 (PDT)
Message-ID: <18f5e5a0-de70-4d6a-bc5a-93d402059aff@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 12:44:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
 <63752557-6468-4aef-a847-06aa39ce108d@oss.qualcomm.com>
 <3758be2d-4553-40b3-8ae6-bc3e502d0531@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3758be2d-4553-40b3-8ae6-bc3e502d0531@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEwMSBTYWx0ZWRfX7kpk11XNt59u
 xfM8VrUDQinmCduaNTZ4wIG5JOapXg+bybkNZG0rNxkkYnSmMLL7LEPSFrtgm04R0qbkvi262bM
 W64BfqRwdYdArqHYEXnLNsajPskDCA7BjeBOGZZTljajQZ+vMQjdpnJuqZU+TjmfRXkL5/KapHm
 /KKifsZygRn15cuBGCMJHU4CdZVEVhevirGAyhwfSyqu42+h/sxvMroUXFOUqfS5VdTdIIQD0uk
 /8iXTMvbkp9a4hSeLVt38Z7jhFTB5gv/hOngeO/OfCJ2t7ek2QNkVNXwxnfXOeU/xHxLCFWsZ5L
 C/R1O+6mUqTWNycjynormDGgeZ/vm/3dJGxSm+wOMxyObO8azbiTw68VE+8MZXyBYMogwouJ+hp
 JZyrVkkxYyZWzSjNrYLKrrUKklRYL/PgqYfF8wQsBd2bbO6aOx92y5R5hZSY16eMpGrBE6HujNe
 yRJ+yzMZfWxFswnJgLA==
X-Authority-Analysis: v=2.4 cv=RfugzVtv c=1 sm=1 tr=0 ts=6a269d2a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=jymwzkz8D7XtJHPt1hQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: FGjdCCN14LxzdKxWLkYUWkLFmbguNV2W
X-Proofpoint-GUID: FGjdCCN14LxzdKxWLkYUWkLFmbguNV2W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_034459_446360_6AA2B4A1 
X-CRM114-Status: GOOD (  11.31  )
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

T24gNS8yNy8yNiAzOjMyIFBNLCBLb21hbCBCYWphaiB3cm90ZToKPiBPbiA1LzI1LzIwMjYgNjo0
NiBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4gT24gNS8yMi8yNiA4OjAyIFBNLCBLb21hbCBC
YWphaiB3cm90ZToKPj4+IEFkZCBkZXZpY2UgdHJlZSBpbmNsdWRlIGZvciB0aGUgQ1EyMzkwTSB2
YXJpYW50IG9mIHRoZSBTaGlrcmEKPj4+IFN5c3RlbS1vbi1Nb2R1bGUsIGEgY29tcGFjdCBjb21w
dXRlIG1vZHVsZSBpbnRlZ3JhdGluZyB0aGUgU2hpa3JhIFNvQwo+Pj4gYW5kIFBNSUMgZm9yIElv
VCBhcHBsaWNhdGlvbnMsIGRlc2lnbmVkIHRvIG1vdW50IG9uIGNhcnJpZXIgYm9hcmRzLgo+Pj4K
Pj4+IMKgwqAgLSBzaGlrcmEtY3FtLXNvbS5kdHNpOiBSZXRhaWwgU29NIHdpdGggbW9kZW0gKFBN
NDEyNSBhbmQgUE04MDA1IFBNSUMpCj4+Pgo+Pj4gVGhlIERUU0kgaW5jbHVkZXMgdGhlIGNvbW1v
biBzaGlrcmEuZHRzaSwgYWRkcyBQTTQxMjUgYW5kIFBNODAwNSBQTUlDCj4+PiByZWd1bGF0b3Ig
ZGVmaW5pdGlvbnMgc3BlY2lmaWMgdG8gdGhpcyB2YXJpYW50Lgo+Pj4KPj4+IENvLWRldmVsb3Bl
ZC1ieTogUmFrZXNoIEtvdGEgPHJha2VzaC5rb3RhQG9zcy5xdWFsY29tbS5jb20+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBSYWtlc2ggS290YSA8cmFrZXNoLmtvdGFAb3NzLnF1YWxjb21tLmNvbT4KPj4+
IFNpZ25lZC1vZmYtYnk6IEtvbWFsIEJhamFqIDxrb21hbC5iYWphakBvc3MucXVhbGNvbW0uY29t
Pgo+Pj4gLS0tCgpbLi4uXQoKPj4+ICsmcG04MDA1X3JlZ3VsYXRvcnMgewo+Pj4gK8KgwqDCoCBz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4gK307Cj4+ID8KPiAKPiBBbHJlYWR5IHRoZXJlJ3MgYW4g
b25nb2luZyBkaXNjdXNzaW9uIG92ZXIgdGhlIHRocmVhZCBbMV0uCj4gUE04MDA1IHJlZ3VsYXRv
cnMgYXJlIGNvbnRyb2xsZWQgYnkgcnBtcGQgc28gaXQncyBub3QgZXhwZWN0ZWQgdG8gYmUgZW5h
YmxlZCBoZXJlLgo+IAo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNTI1
MDkzNDUzLmVkbXFyeWdncDVrY3F4eHlAaHUta290YXJha2UtaHlkLnF1YWxjb21tLmNvbS8KClJp
Z2h0LiBEb3duc3RyZWFtLCBNU004OTk4ICh0aGUgb3RoZXIgdXNlcikgYmluZHMgaXQgdG8gdGhl
IEdGWCBDUFIsCndoaWNoIHByb2JhYmx5IGhhcyB0aGUgYmVuZWZpdCBsb3dlciBsYXRlbmN5IHRo
YW4gaWYgaXQgd2VyZSB0byBnbwp0aHJvdWdoIFJQTSAoYWx0aG91Z2ggSSB3YXMgc29ydGEgaG9w
aW5nIHRoaXMgd291bGQgYmUgYW4gaW5zdGFuY2UKb2YgY2FyZ28gY3VsdCB0aGF0IHdlIGNvdWxk
IGp1c3QgcmlwIG91dC4uKS4KCklmIHlvdSBhZGQgL29taXQtaWYtbm8tcmVmLyBhYm92ZSB0aGUg
ZGVmaW5pdGlvbiBvZiB0aGUgcG04MDA1X3JlZ3VsYXRvcnMKbm9kZSBpbiBwbTgwMDUuZHRzaSwg
ZG9lcyBpdCBnZXQgY29ycmVjdGx5IHNraXBwZWQgKGkuZS4gaWYgeW91IGRvCmR0YyAtSSBkdGIg
c2hpa3JhLmR0YiAtTyBkdHMgfCBncmVwIHFjb20scG04MDA1LXJlZ3VsYXRvcnMsIGlzIGlzIHRo
ZXJlKT8KCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
