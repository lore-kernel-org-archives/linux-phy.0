Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFF26CD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 17:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=je9yNHW2RFE4vZTvx4cm2gvTcwtD0aPhUecy7/cE68U=; b=v1irvsMP61LaUz
	rM/aDGER7rlp4KL5ohweCt9iun19zXApRw9dLssQJcbWuZeA0BlwIrTNcNl5rJuusdey6DM6DnXqC
	KIWCbsThSfmKBCSz44fBWARgijfSR+KiKArTPyz2mTHRaA4x6M+MxyFuv8Dc1f0t4I1QdPj9TS5b/
	fX0z1raBcvC9kG8Bpnyw00Fiby6iZTj6EtSa4AZ1LxwH/JJ1qirp86zi57p8iIjhGBY8CMS81IXkT
	47xXFi+p17DUQpM5lZ5hByGLHFCUABMKRVvefnPfPeWETud49bBJRNwhO8hzlfWFbgFZkdeh0abpj
	7AVF9Z7vgVvL8YFQQ+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTtB-0000000BaUl-3qrr;
	Fri, 22 May 2026 17:42:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTt8-0000000BaU2-466m
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 17:42:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGapZC1733113
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:42:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=SNQk7VFC+yr2lz69rbbAAuhRoGnK8y0rkA2N/S6BXs0=; b=PS
	hlfu9nEHraA/VQ4tjaR4AI9cmDLV4K5s10rpIFSxWKbsF7eRKlWJdI6xqjh9L4AF
	sAxz5gtYDX+sYi/HxqhS3JkJIKjiHOfk5PoUBxaIETy8Gzdl08JsfzrJSukblbIK
	ycaLN5hJk3JMeKldpRBQb121ZxsW6qt+Ohqs+j5u6GO5Y1FkEQmPWkeVQagQzY4Y
	ZSkV6T/gkozq7rrfb/DU1RP4SwcWLZUMdl2LLsZzUgl1QZiQSODyL3ytykeEjHte
	d9m3izsnbQu9NVic1sq3X21cfqG+WThZe9eW8gQ2IND8t4pCiWLD8LEVHN4+/uZZ
	fcFSKdyu+kkY9dLIJfuQ==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eattq88vk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:42:20 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-69b90f1a51fso15389221eaf.3
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 10:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779471740; cv=none;
        d=google.com; s=arc-20240605;
        b=SgPsC6dWUlbk+Yi82KEvV2Eo2pcsdkI8b/4p9KVudRLL9ULdTxwTOG1zZkKtr+C3X6
         1qTYczHhYJw5FDA9c5o99e1m37WYj84QxmgKMpNW/4XZvdtzo5sMQDWGHXmqUebtmbwc
         l0cVNzYr1C6Dkt9aa7F6zm9lfeMhn8NmQP0aI0Zx7k3nhlxsOZQF5vrBuZiEGZKWXyok
         6ppoP2AyFq8Bb5qUQYrR9eq01onMMqwrDxJwbEpnMD2LTU+NaLQg0/f84ks8pLPny5j8
         U/AJJPR2MJjkT48UUy+Wv01bKHN1Bfbq4W8luryG1xK1B1GePJYwPhFcbhL//wZclHGI
         ac3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=SNQk7VFC+yr2lz69rbbAAuhRoGnK8y0rkA2N/S6BXs0=;
        fh=uM5hZmJG8DkhVib2dqHI5vB/pBhzJpKzGjP4VaNlDBQ=;
        b=leGhLE/CRSgIbk8OOUruL1AO1+s1/ihpYrBaLoU96YI84gm0GobLRt4clVrmuGTVCS
         k/yh1IVeqCKcgExSwlS9ymZ0zq3X/SHFT4mTHeYzIbHj7YwxMueECyAyyoq0OWDMbQvv
         +FmsxBhTxALxu80ll6ctWkCcP6cj5+jMoqR3vIO0L27pCo7c1SckPJe30M4JbYGMXGHB
         H5oH8oJaqCgF7Zax7sxnV73d5fz/Q/6P60tT8791ihIfWfHZcGTK+e35aS9aH4hXZH8y
         8QpYcsFOGqmKXb/ldv3dtTZpXo2CCcyOGYN09RWfIM8SK04OvDsS3AfgcDPZepHSlFg5
         zXsA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779471740; x=1780076540; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SNQk7VFC+yr2lz69rbbAAuhRoGnK8y0rkA2N/S6BXs0=;
        b=R82DReUmUiUNso88yvl0mwS9i1S8/EMU890nu+7E50/yVglIjwnCAWyuxlCjplVp4r
         2uOGFxcVXBuxM80dNpIIjpIaAB8LYmIR+J93c9dq5zq6nBzZ4P97mBNRJr20AlpBMyVt
         HCKiTHO/NiEY1ov4HYI5DnwcLl53WHvVV6qG4P+kRvD48nYtt3vx0KR6uqGqaCoUIWHJ
         AgVzZd7e8DRrrNKRi8MkogbJQMLXqXB2NTXHgK0XwVb0Zs+6XwsM57fJKepvnO+pudPg
         MFjoQoW9jApiKBmjl5ycIJ3fcFmwCqPMOEpbJbVvBMZ5sa98ohPxGBW1vSoOyu64S0ho
         F/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779471740; x=1780076540;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SNQk7VFC+yr2lz69rbbAAuhRoGnK8y0rkA2N/S6BXs0=;
        b=DUo6RVr7Ol2JgXe9mdeVrbR4NWDi0nRNp1SEoMN3xpfAQDA2qOeNR1q+CrcScaM7m4
         YSzJYW6J4P3E83D9nGNLoiGqGwBhKvoiEeggwmx0RyOnNxCROHIOSawEhdRjApEXu+l3
         305nTT7y86HTtDbCL3Lf4nxvVf/KAJBh3h8WIljoRxyZoJoY8ZUy9+SDFi7puNERRqHi
         xk0gSLmW8IgNAPl6n3xSr9LizkvpR5HGsoIRVbII3qCidEG77nKhnGJ6ayLPXpNEBuI4
         odSWi9Re7iz1o54cb3DCApIGE20Jtbyw09Luh4o5J+/Bud5lV33qjgCsH0wP1iYLTu8u
         TmYA==
X-Forwarded-Encrypted: i=1; AFNElJ86SngHUwfXhRM5LUwrxZ8BBZYj6bkXI4Ogs7P0mlnpl+ruLN/hssDDuu+42pjkZ9zEB8p6K/9aIaM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXgKZvpd8e+L8IScBLi9gSOEKFLPlVaCTCCqAUwRaxYICMGsbo
	eWZtDfc7LlwLux0cEUgxKKq9FvTQmVaLIbbjQVN0LNIBNmifQ5fc8POCcssC+QkNopa90yB19yf
	VwxpVQ5dI3VXZbQAfrkYrafbsEzR3yt7y23WyKOjVZauTIBUaYhxg5Gxo1f+Nd7byHofmmetD44
	DcwSCjUcDw4Jylj/xGoTtldapU7Wd1r9P1E4791uj7HHU=
X-Gm-Gg: Acq92OEQxEtwfZQhErpItJyhjO1FHzfKSyGpaNnaN/C7PL86cRyFuI0GjpprJHayqvO
	hGPmzZHDaynJ7nyPSgjpKkCZZRw5vcpMbJ2cz/Hd2kk/mA5J5Xuod01UhPDsXzicPe9+P6n7gVU
	e3Ei3Iu7uzShcaOX9kCyx0cs9Sh/fhpl27N0LMeQYKza/M6ZytbGdwwPFvllRxa0mzogu0Fk9uh
	ViKpYwxRFPSwUg1O6CiTD1T455RwljjtuykoA==
X-Received: by 2002:a05:6820:c95:b0:695:a638:c6ba with SMTP id 006d021491bc7-69d7eafdf79mr2473686eaf.7.1779471739794;
        Fri, 22 May 2026 10:42:19 -0700 (PDT)
X-Received: by 2002:a05:6820:c95:b0:695:a638:c6ba with SMTP id
 006d021491bc7-69d7eafdf79mr2473650eaf.7.1779471739286; Fri, 22 May 2026
 10:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-5-mike.scott@oss.qualcomm.com> <e5b40f3c-25f6-401b-84d3-2fb96897d936@packett.cool>
In-Reply-To: <e5b40f3c-25f6-401b-84d3-2fb96897d936@packett.cool>
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Fri, 22 May 2026 10:42:08 -0700
X-Gm-Features: AVHnY4I0siniFNARRZUvZAYX6iou3EkipwuWUwmBSRJQLSPUMmCVdlbdpra87SQ
Message-ID: <CACSVV02itF8VWQ6y97mFk0pz7a57c6247CuReZzzpdv7LJ=d8Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma to
 256 MiB
To: Val Packett <val@packett.cool>
Cc: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE3NiBTYWx0ZWRfXzLYHlf5RFf6y
 uP817zdFYDVNh/r0bd2Thjejdww1ybLSWznFKKZYJL72/MYgdIB1Yk39pZdNOw65TqG48kN3ld1
 SL30M1Iig+k4aWGfXoV8E+VCWjHnFpCLaWw2fUR6+e3lPTd0KJOkhflkFoyxY3TyRkb9pDxiAzz
 lpzQrREJJhEsGJ/DjIUgalI3F7PzavSTz0NaOQyVSKUbaxbZu35k+VMAEh0QkkkYNiZzCYYezXf
 VfjAs/w3hNn1CkziPp4NwiUHD1Hcr83eNfryWy5I9pVUGa6H4wodM45Se09f/F1y4hKba/ornqq
 sLCj8+7H2/633TZh9yw03eSVFah23AaTFocVEiphlmdl83wNt64a+Xb+ZWBN/KzxkQYRlVljVyQ
 hAx5HxgTR9UIsoXNNmUHl7SUHR+n3NvamXPk9Ad9g0iN8rx33TUkK9yH2gZWioIg1qL/42g1vmx
 fC83GsBf5BbBTVGj++A==
X-Proofpoint-GUID: IFpQn6wSyig_AaZXJjvpKixx6NE1Qypg
X-Proofpoint-ORIG-GUID: IFpQn6wSyig_AaZXJjvpKixx6NE1Qypg
X-Authority-Analysis: v=2.4 cv=S/zpBosP c=1 sm=1 tr=0 ts=6a10957c cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_glEPmIy2e8OvE2BGh3C:22 a=bUDvy5jRn-tkqcjj8-cA:9 a=QEXdDO2ut3YA:10
 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_104223_138029_A0DC96EB 
X-CRM114-Status: GOOD (  24.08  )
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
Reply-To: rob.clark@oss.qualcomm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgODo1NeKAr1BNIFZhbCBQYWNrZXR0IDx2YWxAcGFja2V0
dC5jb29sPiB3cm90ZToKPgo+Cj4gT24gNS8yMC8yNiAxMDowOSBQTSwgTWljaGFlbCBTY290dCB3
cm90ZToKPiA+IFRoZSAxMjggTWlCIGxpbnV4LGNtYSByZXNlcnZlZC1tZW1vcnkgcG9vbCBvbiBk
ZWxsLXRoZW5hIGlzIHRvbyBzbWFsbAo+ID4gdG8gc3VwcG9ydCB0aGUgY2FtZXJhIHBpcGVsaW5l
IGluIHBhcmFsbGVsIHdpdGggdGhlIG5vcm1hbCBMaW51eAo+ID4gZGVza3RvcC4gT24gYSBmcmVz
aGx5LWJvb3RlZCBzeXN0ZW0gd2l0aCBHTk9NRSBydW5uaW5nLCB0aGUgdHlwaWNhbAo+ID4gcnVu
dGltZSBjb25zdW1lcnMg4oCUIG1zbSBEUk0gZnJhbWVidWZmZXJzIChXYXlsYW5kIHRyaXBsZSBi
dWZmZXJpbmcgb24KPiA+IHRoZSBlRFAgcGFuZWwpLCBxY29tX2lyaXMgdmlkZW8gY29kZWMgYnVm
ZmVycywgcWNvbV9jYW1zcyBWRkUKPiA+IHByZS1hbGxvY2F0ZWQgYnVmZmVycyDigJQgYWxyZWFk
eSBvY2N1cHkgfjEwMCBNaUIgb2YgdGhlIHBvb2wsIGxlYXZpbmcKPiA+IG9ubHkgfjI1IE1pQiBm
cmVlLgo+Cj4gSHVoLCBJJ20gc3VycHJpc2VkIHRoYXQgZHJtIGZyYW1lYnVmZmVycyB1c2UgQ01B
4oCmIElJUkMsIG1zbSBkcm0gY2FuIHdvcmsKPiBmaW5lIHdpdGhvdXQgYSBjbWEgbm9kZSBwcmVz
ZW50IGF0IGFsbC4KPgo+IEluZGVlZCwgd2l0aCBhIGRlc2t0b3Agb24gYSA0SyBtb25pdG9yIEkn
bSBzZWVpbmcuLgo+Cj4gQ21hVG90YWw6ICAgICAgICAgMTMxMDcyIGtCCj4gQ21hRnJlZTogICAg
ICAgICAgICAxNzA0IGtCCgpJcyBzb21ldGhpbmcgaW4gdXNlcnNwYWNlIGFsbG9jYXRpbmcgZnJv
bSBkbWEtaGVhcCBhbmQgaW1wb3J0aW5nIGludG8KZHJtL21zbT8gIFdlIHNob3VsZG4ndCBvdGhl
cndpc2UgYmUgYWxsb2NhdGluZyBmcm9tIENNQSwgYXQgbGVhc3Qgbm90CmludGVudGlvbmFsbHku
CgooSSBhbHNvIGRpc2xpa2Ugc3BlY2lmeWluZyBDTUEgaW4gZHRiLCBzaW5jZSB0aGF0IHNlZW1z
IG1vcmUgbGlrZQpkZXNjcmliaW5nIHVzZS1jYXNlIHRoYW4gZGVzY3JpYmluZyBody4uKQoKQlIs
Ci1SCgo+ID4gVGhlIGxpYmNhbWVyYSAic2ltcGxlIiBwaXBlbGluZSBoYW5kbGVyIHVzZWQgYnkg
L2Rldi9tZWRpYTAgb24KPiA+IGRlbGwtdGhlbmEgYWxsb2NhdGVzIGZvdXIgQUJHUjg4ODggZnJh
bWVzIGF0IDE5MjDDlzEwODggPSAzMiBNaUIgdG90YWwuCj4gPiBUaGF0IHJlcXVlc3QgZmFpbHMg
b24gdGhlIGZvdXJ0aCBmcmFtZToKPiA+Cj4gPiAgICAgIEVSUk9SIERtYUJ1ZkFsbG9jYXRvcjog
ZG1hLWhlYXAgYWxsb2NhdGlvbiBmYWlsdXJlIGZvciBmcmFtZS0zCj4gPiAgICAgIEVSUk9SIEFs
bG9jYXRvcjogU3RyZWFtIGlzIG5vdCBwYXJ0IG9mIC9iYXNlLy4uLi9jYW1lcmFAMTAgYWN0aXZl
IGNvbmZpZ3VyYXRpb24KPiA+ICAgICAgQ2FuJ3QgYWxsb2NhdGUgYnVmZmVycwo+ID4gICAgICBG
YWlsZWQgdG8gc3RhcnQgY2FtZXJhIHNlc3Npb24KPiA+Cj4gPiByZXN1bHRpbmcgaW4gZ25vbWUt
c25hcHNob3QncyAiQ291bGQgbm90IHBsYXkgY2FtZXJhIHN0cmVhbSIgYW5kIGFueQo+ID4gb3Ro
ZXIgbGliY2FtZXJhLW1lZGlhdGVkIGFwcCBiZWluZyB1bmFibGUgdG8gYWN0dWFsbHkgc3RyZWFt
Lgo+Cj4gLi5ob3dldmVyIEkgY291bGRuJ3QgcmVwcm9kdWNlIGFueSBmYWlsdXJlcywgU25hcHNo
b3Qgc3RhcnRlZCB1cCBqdXN0Cj4gZmluZSwgbG93ZXJpbmcgQ21hRnJlZSB0byAzMDAga0IuCj4K
PiBJIGhhdmUgZXZlbiBsYXVuY2hlZCBib3RoIFNuYXBzaG90IGFuZCBmZnBsYXkgd2l0aCBhIDRL
IEFWMSB2aWRlbwo+IHRocm91Z2ggYXYxX3Y0bDJtMm0sIENtYUZyZWUgd2VudCBhbGwgdGhlIHdh
eSBkb3duIHRvIHplcm8gYnV0IHRoZXJlCj4gd2VyZSBubyBlcnJvcnMgd2hhdHNvZXZlciwgYm90
aCB3b3JrZWQgc2ltdWx0YW5lb3VzbHkganVzdCBmaW5lLiBvXzAKPgo+IEkgdGhpbmsgZHJtIGJ1
ZmZlcnMgbWlnaHQganVzdCBnZXQgZXZpY3RlZCBmcm9tIHRoYXQgYXJlYSBvciBzb21ldGhpbmc/
Cj4KPiA+IEJ1bXBpbmcgbGludXgsY21hIHRvIDI1NiBNaUIgKGEgMC45JSByZXNlcnZhdGlvbiBv
biB0aGVzZSBsYXB0b3BzJwo+ID4gdHlwaWNhbCAyNyBHaUIgUkFNKSBsZWF2ZXMgfjE1MCBNaUIg
ZnJlZSBhdCBydW50aW1lIOKAlCBzdWZmaWNpZW50IGZvcgo+ID4gdGhlIGxpYmNhbWVyYSBidWZm
ZXIgc2V0IHBsdXMgaGVhZHJvb20gZm9yIHZpZGVvIHBsYXliYWNrIG9yIG90aGVyCj4gPiBDTUEt
aHVuZ3J5IHdvcmtsb2FkcyBpbiBwYXJhbGxlbC4KPiA+Cj4gPiBUZXN0ZWQgb24gRGVsbCBMYXRp
dHVkZSA3NDU1OiB3aXRoIHRoZSAyNTYgTWlCIHBvb2wsIENtYUZyZWUgYXQKPiA+IEdOT01FLWRl
c2t0b3AgaWRsZSBpcyB+MTUwIE1pQiwgZ25vbWUtc25hcHNob3Qgc3RyZWFtcyB0aGUgT1YwMkUx
MAo+ID4gY2FtZXJhIGNsZWFubHksIGFuZCBgY2FtIC1jIDEgLS1jYXB0dXJlPTJgIHN1Y2NlZWRz
Lgo+ID4KPiA+IFRoZSBjb21wYW5pb24gYm9hcmQgZmlsZXMgZGVsbC1pbnNwaXJvbi0xNC1wbHVz
LTc0NDEgYW5kIHRoZSB1cHN0cmVhbQo+ID4gLmR0cyB2YXJpYW50cyBpbmhlcml0IGZyb20geDEt
ZGVsbC10aGVuYS5kdHNpLCBzbyB0aGlzIGNoYW5nZXMgdGhlCj4gPiBwb29sIHNpemUgZm9yIGV2
ZXJ5IGRlbGwtdGhlbmEtYmFzZWQgbGFwdG9wIGluIG9uZSBwbGFjZS4KPgo+Cj4gSW4gYW55IGNh
c2UsIHRoYXQncyBub3QgYW4gb2JqZWN0aW9uIG9mIGNvdXJzZSwganVzdCB3b25kZXJpbmcgd2h5
IGl0J3MKPiB3b3JraW5nIGZpbmUgZm9yIG1lIGFuZCBub3QgZm9yIHlvdS4uCj4KPiBBY2tlZC1i
eTogVmFsIFBhY2tldHQgPHZhbEBwYWNrZXR0LmNvb2w+Cj4KPiB+dmFsCj4KPgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
