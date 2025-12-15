Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1BA5D5B174
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 20:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWSfsxCSz2358x7t+WQ8EancQXLZH6neNaRqIxLNwjU=; b=hAkHktbMil42V/
	IfJh6usYjH1jiKjZXAPgs+c7QZELPwEGclHhupGX5Gy2pnjLGIHjkSQwE+hzKZQPU3MGKXg6XqmXE
	vI0c0AaqV/LO/twOztvVJfT1Cw1H69IcN3w3GLiH+eOnumnV85lNBy8Andl63E2WIYngCPDRDNm8F
	rP6shOFxYQ2rlp85EarCHcgkvJ6hlkpdBt6XYTFzX/v6w9PQsF/98b5SmBOexpyGyOKQ1kgI7CNhE
	AaPthbDnex9PjNP2g2IHpkv3QkO5Udl3ROsDelxkv32vCbpUZt4rKwqKZ+gAgNR/KF5bQV60koVsS
	Ml97Up1933mTD58SSX4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVF0G-00000004DhS-2FFW;
	Mon, 15 Dec 2025 20:17:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVEzv-00000004Df3-44bw
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 20:17:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFE3ox24174113
	for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 20:16:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pqLquTKVPe+aI9e3A6C+brCbX+Ki9xjuWw7rV5rnxmI=; b=jcCIZIyTiojkUwgu
	hYXj7OO8Q95b1XM9ZOtSjlvMYlX2wpl+JrqbLGfKEyDOugwlkLSF68EGIP7Va7GT
	xQn25T4ItBbraXZjs+pN8xCT5zZYkhmCjANRw1m19iUoj4Sj5Szbl9CXqWvBhEOJ
	+Bbl91e0ER90WV3xXufkYpimQ84MY2xobzKi8AFF7DoJ/7v+6o3qe7dUTUNuAC4P
	uDatlknyxHusKHBYf3hrsyh7vmGjcaxoFQ0Cp5IupiySeDNNHs4JKO0Ias6kVbTP
	hlHPZBq55KUFT3X+amBlEj4zWrbgKGgL482InMQBYDNy73n8QFXCIneEMv5OfXXP
	mF1V3A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2ks014ek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 20:16:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed74e6c468so55094311cf.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 12:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765829806; x=1766434606; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pqLquTKVPe+aI9e3A6C+brCbX+Ki9xjuWw7rV5rnxmI=;
        b=X269Ay58KcUTSFGI9C8VkXgc9sFzVkuTu9hRkDnNieOtyIbcpGv16WCVE0VXsMdyGj
         AJZjWvfw7sb+o/7z5KtCG3MYzGKDRIeTb8hy8b0ryq3/J1/QK+8uzX8/eeHOccVltsHn
         3HoQ1V3R+eFrtAYu3f8X3YqRw5U9m+IPBbSBP69liU7KHSwjF+6tlvrgpoedhvOo12cB
         4VtcHNh5p6JW0Lsvz39XyzjA7OaMQo6cmKkzNmekBFsRArf11hhuL9nW87YLBL+KisVY
         UpZSOOxFY9QoF2WpXh2ChNJwMa1BtcKu0LUaEvOEOqocvwhdUtiUiplBnsCsDld6pvMQ
         py3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765829806; x=1766434606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pqLquTKVPe+aI9e3A6C+brCbX+Ki9xjuWw7rV5rnxmI=;
        b=Juw6x7UN2JzKC8hKsmVfzV2WUUWAIQVKwdYOXufDgsF0XFc1TgZtQnmnA3dsXtn4WG
         l/2lH+nzrhfdc5t0P2nL6bgmUTZhU/kzExz3VPZEvJgDRXxyRtki7HT3gsjoE+u24Xpv
         lIQXlS7uIAlcipdb1t8CUAAJD8HG3N+S/kFKDuaB6UK4pWjPQyKa8cnDDCmowaMSVe4k
         2yt14RtYD1XEzkHg0SwsCJmNTw/BkBPMpS37wVk3pHJMx/+BnAe8kUzep+uXv5gSJ02W
         fyQbqb+9Dq637NBo9OErPmeZdq6l0ElKKTU5D6IfFAiy3kBvhFvGoHT1jEURz5mBJstD
         Ozqg==
X-Forwarded-Encrypted: i=1; AJvYcCVxSu//GKQcoyj4tDhkg5wjOQjl2qwCBuYDxYmuYKIAr9rwDkJcWiReAO2BZ2g+1Zco9mjVbYhamcE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyV/HeK6K5i3LRhFIpq+VhPbYhm4x+B2y6I6gWdzcGfwyZtFxqQ
	YqLUKONROgQv/JaQloDRQPo6BjXQBEbFEUuQaL/CbG8Qs2W+V4DUm/d0wY1fTqgsm2xz155YxH3
	OA3m7NrEaX7AIVv6w9EWhpeFacNBorTSErohy5iMn/94OIWlpBU4x3MRqRJKCA+73c4nZ
X-Gm-Gg: AY/fxX7ItFPeZK7anoE9vCzNsph6nAOfOET18xGqO2xrPpVjc/4hj/OKPldLLCxLISJ
	Vq8OJ4KmiRahPGThmMNk97jY8RqOnQYJgKKOeLriu3BE6wn+ZBmLVbha+ik3X8YT2x04nI6JvsU
	1+f6kfagAThKaeS3kjC+KNsOmzwhaaxj9DFuOQ7RANgwHEUYA3GqvnNtsiAAqGdb8fXMrlwXThY
	wdZiJ44z22uB6fGZoOB8FfI0RXE8im6EWRuAeqCoZgET/6FYwaXURLpqRJhYY8+4/DSfgp7LLcE
	7eh+OvjFPS+gfArD6jlNsOjxSHjAbq+gsI5VtgmmPwGrvjJUrESl6zbNNz/pcXPGvCGDXuTXWVH
	ADLGszX8CfssWVt3NdnVch322wcGrex1Da7n3Ev/0DVQKtLEKJKzxH2lx6sZdEbI6a7D6CaiNkZ
	2uw2z8XKWZ8YzzTymmCDD2Jjw=
X-Received: by 2002:a05:622a:5143:b0:4f1:bbaf:c5d3 with SMTP id d75a77b69052e-4f1d0627701mr170026811cf.59.1765829805544;
        Mon, 15 Dec 2025 12:16:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUMgwGjiRa8BlTzdwK7Fqb1zinfr0genufgjWu/97YuFobCv1dASGcjlM3fL99zPCXnKmDEw==
X-Received: by 2002:a05:622a:5143:b0:4f1:bbaf:c5d3 with SMTP id d75a77b69052e-4f1d0627701mr170026211cf.59.1765829804757;
        Mon, 15 Dec 2025 12:16:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da607f9sm102917e87.87.2025.12.15.12.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:16:44 -0800 (PST)
Date: Mon, 15 Dec 2025 22:16:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-ID: <53a56an76s3ehg6eufr66l5ch2ygmp5wmc7dfqbp3srbspcuo6@i5r4gkadykm2>
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
 <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
 <CAFEp6-1nQHUTQwaxX0TrjFuKsAGYjdMHG0018z8FqsXZQ0Nffg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-1nQHUTQwaxX0TrjFuKsAGYjdMHG0018z8FqsXZQ0Nffg@mail.gmail.com>
X-Proofpoint-ORIG-GUID: 1V24pGAG2z0hCaE7AEnC7iPzYwa6JM7P
X-Authority-Analysis: v=2.4 cv=eZcwvrEH c=1 sm=1 tr=0 ts=69406cae cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=q-D-r8dKOzS9vRlWuOUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 1V24pGAG2z0hCaE7AEnC7iPzYwa6JM7P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE3NSBTYWx0ZWRfX8GgWYWNB+XNU
 KLGDbFVKWCla98etoAgqQ6RESibLpIHsO+ArMi6JHje2fJdQ70ZoKKly//pWf5+Zh7+DyOAhnJp
 WRIHAyccwL7wXXZmVJxHqQ8doc52a6Yz2DTN45aRPiBnzzkoxY1VXmpjJ4saR+BIxIZNq+R3vUh
 K5TmWAlt/G9O4sWMJIfPzEbokZCQity3TfI2J2hKO7ortHbKG9G9bUh0u07cKuTEmvSaf1zU/kj
 St7pRfaPu6xCXdW7vo86MO9CeH/V42FnrbbxetNDm9LBpDRO98IWcrWKyeBYbFrxERzthkbS7N4
 6eZzxx5dxQdZQowt7Jnd3dobW/IcT0w+pJ8WL2KBy6QSZ2WBpf4tl0MR+0sKNSE/s4jRZCH8tOG
 GQDo0x7Pd+1t3DgQH2QcU+eyGm59hg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_121648_021238_68878191 
X-CRM114-Status: GOOD (  39.48  )
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

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgMDk6NDk6MjFBTSArMDEwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IEhpIERtaXRyeSwKPiAKPiBPbiBGcmksIERlYyAxMiwgMjAyNSBhdCA4OjMw4oCvUE0g
RG1pdHJ5IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdy
b3RlOgo+ID4KPiA+IE9uIFRodSwgRGVjIDExLCAyMDI1IGF0IDA0OjM1OjM2UE0gKzAxMDAsIExv
aWMgUG91bGFpbiB3cm90ZToKPiA+ID4gRW5hYmxpbmcgcnVudGltZSBQTSBiZWZvcmUgYXR0YWNo
aW5nIHRoZSBRUEhZIGluc3RhbmNlIGFzIGRyaXZlciBkYXRhCj4gPiA+IGNhbiBsZWFkIHRvIGEg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzIHRoYXQKPiA+
ID4gZXhwZWN0IHZhbGlkIGRyaXZlciBkYXRhLiBUaGVyZSBpcyBhIHNtYWxsIHdpbmRvdyB3aGVy
ZSB0aGUgc3VzcGVuZAo+ID4gPiBjYWxsYmFjayBtYXkgcnVuIGFmdGVyIFBNIHJ1bnRpbWUgZW5h
YmxpbmcgYW5kIGJlZm9yZSBydW50aW1lIGZvcmJpZC4KPiA+ID4gVGhpcyBjYXVzZXMgYSBzcG9y
YWRpYyBjcmFzaCBkdXJpbmcgYm9vdDoKPiA+ID4KPiA+ID4gYGBgCj4gPiA+IFVuYWJsZSB0byBo
YW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3Mg
MDAwMDAwMDAwMDAwMDBhMQo+ID4gPiBbLi4uXQo+ID4gPiBDUFU6IDAgVUlEOiAwIFBJRDogMTEg
Q29tbToga3dvcmtlci8wOjEgTm90IHRhaW50ZWQgNi4xNi43KyAjMTE2IFBSRUVNUFQKPiA+ID4g
V29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPiA+ID4gcHN0YXRlOiAyMDAwMDAwNSAobnpD
diBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4gPiA+IHBjIDogcXVz
YjJfcGh5X3J1bnRpbWVfc3VzcGVuZCsweDE0LzB4MWUwIFtwaHlfcWNvbV9xdXNiMl0KPiA+ID4g
bHIgOiBwbV9nZW5lcmljX3J1bnRpbWVfc3VzcGVuZCsweDJjLzB4NDQKPiA+ID4gWy4uLl0KPiA+
ID4gYGBgCj4gPiA+Cj4gPiA+IEF0dGFjaCB0aGUgUVBIWSBpbnN0YW5jZSBhcyBkcml2ZXIgZGF0
YSBiZWZvcmUgZW5hYmxpbmcgcnVudGltZSBQTSB0bwo+ID4gPiBwcmV2ZW50IE5VTEwgcG9pbnRl
ciBkZXJlZmVyZW5jZSBpbiBydW50aW1lIFBNIGNhbGxiYWNrcy4KPiA+ID4KPiA+ID4gUmVvcmRl
ciBwbV9ydW50aW1lX2VuYWJsZSgpIGFuZCBwbV9ydW50aW1lX2ZvcmJpZCgpIHRvIHByZXZlbnQg
YQo+ID4gPiBzaG9ydCB3aW5kb3cgd2hlcmUgYW4gdW5uZWNlc3NhcnkgcnVudGltZSBzdXNwZW5k
IGNhbiBvY2N1ci4KPiA+ID4KPiA+ID4gVXNlIHRoZSBkZXZyZXMtbWFuYWdlZCB2ZXJzaW9uIHRv
IGVuc3VyZSBQTSBydW50aW1lIGlzIHN5bW1ldHJpY2FsbHkKPiA+ID4gZGlzYWJsZWQgZHVyaW5n
IGRyaXZlciByZW1vdmFsIGZvciBwcm9wZXIgY2xlYW51cC4KPiA+ID4KPiA+ID4gRml4ZXM6IDg5
MWE5NmY2NWFjMyAoInBoeTogcWNvbS1xdXNiMjogQWRkIHN1cHBvcnQgZm9yIHJ1bnRpbWUgUE0i
KQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBvc3MucXVh
bGNvbW0uY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJh
cnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiAtLS0KPiA+ID4gIHYzOiBUaGUgcGh5LWNv
cmUgZXhwZWN0cyBwYXJlbnQncyBydW50aW1lLXBtIHRvIGJlIHNldHVwIGJlZm9yZSBjcmVhdGlu
Zwo+ID4gPiAgICAgIHRoZSBwaHksIHNvIG1vdmUgYmFjayBydW50aW1lLXBtIHRvIGl0cyBpbml0
aWFsIGxvY2F0aW9uIGFuZAo+ID4gPiAgICAgIHJlbG9jYXRlIGRldl9zZXRfZHJ2ZGF0YSgpIGlu
c3RlYWQuCj4gPiA+Cj4gPiA+ICB2MjogTW92ZSBydW50aW1lLXBtIGVuYWJsaW5nIGFmdGVyIGRl
dl9zZXRfZHJ2ZGF0YQo+ID4gPiAgICAgIHVzZSBkZXZtX3BtX3J1bnRpbWVfZW5hYmxlKCkgdG8g
Zml4IHVuYmFsYW5jZWQgZW5hYmxpbmcgb24gcmVtb3ZhbAo+ID4gPiAgICAgIHJld29yZCBjb21t
aXQgbWVzc2FnZQo+ID4gPgo+ID4gPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVz
YjIuYyB8IDE0ICsrKysrKy0tLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXF1c2IyLmMKPiA+ID4gaW5kZXggYjU1MTRhMzJmZjhmLi42Mzg2ZDgzNGIwZTQgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwo+ID4gPiBAQCAtMTA5
MywyOSArMTA5MywyNyBAQCBzdGF0aWMgaW50IHF1c2IyX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgICAgICAgICAgICAgIG9yLT5oc2Rpc2NfdHJpbS5vdmVy
cmlkZSA9IHRydWU7Cj4gPiA+ICAgICAgIH0KPiA+ID4KPiA+ID4gLSAgICAgcG1fcnVudGltZV9z
ZXRfYWN0aXZlKGRldik7Cj4gPiA+IC0gICAgIHBtX3J1bnRpbWVfZW5hYmxlKGRldik7Cj4gPiA+
ICsgICAgIGRldl9zZXRfZHJ2ZGF0YShkZXYsIHFwaHkpOwo+ID4gPiArCj4gPiA+ICAgICAgIC8q
Cj4gPiA+IC0gICAgICAqIFByZXZlbnQgcnVudGltZSBwbSBmcm9tIGJlaW5nIE9OIGJ5IGRlZmF1
bHQuIFVzZXJzIGNhbiBlbmFibGUKPiA+ID4gLSAgICAgICogaXQgdXNpbmcgcG93ZXIvY29udHJv
bCBpbiBzeXNmcy4KPiA+ID4gKyAgICAgICogRW5hYmxlIHJ1bnRpbWUgUE0gc3VwcG9ydCwgYnV0
IGZvcmJpZCBpdCBieSBkZWZhdWx0Lgo+ID4gPiArICAgICAgKiBVc2VycyBjYW4gYWxsb3cgaXQg
YWdhaW4gdmlhIHRoZSBwb3dlci9jb250cm9sIGF0dHJpYnV0ZSBpbiBzeXNmcy4KPiA+ID4gICAg
ICAgICovCj4gPiA+ICsgICAgIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZShkZXYpOwo+ID4gPiAgICAg
ICBwbV9ydW50aW1lX2ZvcmJpZChkZXYpOwo+ID4KPiA+IEkgdGhpbmssIHRoaXMgc2hvdWxkIGJl
IGNhbGxlZCBhZnRlciBlbmFibGluZyBydW50aW1lIFBNLiBQbGVhc2UgY29ycmVjdAo+ID4gbWUg
aWYgSSdtIHdyb25nLgo+IAo+IGVuYWJsZS9kaXNhYmxlIGFuZCBmb3JiaWQvYWxsb3cgYXBwZWFy
IHRvIGJlIG9ydGhvZ29uYWwsIHRoZSBwdXJwb3NlCj4gb2YgaW52ZXJ0aW5nIHRoZW0gaGVyZSBp
cyB0byBwcmV2ZW50IGFuIHVubmVjZXNzYXJ5IHN1c3BlbmQvcmVzdW1lCj4gY3ljbGUgZnJvbSBv
Y2N1cnJpbmcgYmV0d2VlbiBlbmFibGUgYW5kIGZvcmJpZC4gQWxzbywgdGhpcyBzZXF1ZW5jZQo+
IGhhcyBiZWVuIHRlc3RlZCBhbmQgd29ya3MgY29ycmVjdGx5LgoKSSBzZWUgdGhhdCBpbiBtb3N0
IG9mIHRoZSBwbGFjZXMgcG1fcnVudGltZV9mb3JiaWQoKSBpcyBiZWluZyBjYWxsZWQKYWZ0ZXIg
cG1fcnVudGltZV9lbmFibGUoKSByYXRoZXIgdGhhbiBiZWZvcmUuIEl0IG1ha2VzIHNlbnNlIHNp
bmNlCmZvcmJpZCBpcyBkZWZpbmVkIGFzOiAiUmVzdW1lIEBkZXYgaWYgYWxyZWFkeSBzdXNwZW5k
ZWQgYW5kIGJsb2NrCnJ1bnRpbWUgc3VzcGVuZCIuIEl0J3Mgbm90IGNsZWFyIHdoYXQgX2lzXyB0
aGUgYmVoYXZpb3VyIGlmIHJ1bnRpbWUgUE0KaXMgZGlzYWJsZWQgYW5kIHdpbGwgYmUgZW5hYmxl
ZCBsYXRlci4KCj4gCj4gPgo+ID4gPiArICAgICBkZXZtX3BtX3J1bnRpbWVfZW5hYmxlKGRldik7
Cj4gPgo+ID4gTWlzc2luZyBlcnJvciBoYW5kbGluZwo+IAo+IEkgd2FzbuKAmXQgY2VydGFpbiB3
aGV0aGVyIHdlIHNob3VsZCBhYm9ydCBvbiB0aGlzIG5vbi1mYXRhbCBlcnJvciwKPiBzaW5jZSB0
aGUgZHJpdmVyIGNhbiBvcGVyYXRlIHdpdGhvdXQgUE0tcnVudGltZSBlbmFibGVkLiBIb3dldmVy
LCBpZgo+IHRoaXMgZXJyb3Igb2NjdXJzLCBpdCBsaWtlbHkgaW5kaWNhdGVzIGEgbW9yZSBzaWdu
aWZpY2FudCB1bmRlcmx5aW5nCj4gbWVtb3J5IGlzc3VlLgoKWWVzLiBOZXZlcnRoZWxlc3MsIGlu
IGdlbmVyYWwgZXJyb3JzIHNob3VsZCBiZSBoYW5kbGVkIHJhdGhlciB0aGFuIGJlaW5nCmlnbm9y
ZWQuCgo+IAo+IAo+ID4KPiA+ID4KPiA+ID4gICAgICAgZ2VuZXJpY19waHkgPSBkZXZtX3BoeV9j
cmVhdGUoZGV2LCBOVUxMLCAmcXVzYjJfcGh5X2dlbl9vcHMpOwo+ID4gPiAgICAgICBpZiAoSVNf
RVJSKGdlbmVyaWNfcGh5KSkgewo+ID4gPiAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZ2Vu
ZXJpY19waHkpOwo+ID4gPiAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGNy
ZWF0ZSBwaHksICVkXG4iLCByZXQpOwo+ID4gPiAtICAgICAgICAgICAgIHBtX3J1bnRpbWVfZGlz
YWJsZShkZXYpOwo+ID4gPiAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICAgICAgIH0K
PiA+ID4gICAgICAgcXBoeS0+cGh5ID0gZ2VuZXJpY19waHk7Cj4gPiA+Cj4gPiA+IC0gICAgIGRl
dl9zZXRfZHJ2ZGF0YShkZXYsIHFwaHkpOwo+ID4gPiAgICAgICBwaHlfc2V0X2RydmRhdGEoZ2Vu
ZXJpY19waHksIHFwaHkpOwo+ID4gPgo+ID4gPiAgICAgICBwaHlfcHJvdmlkZXIgPSBkZXZtX29m
X3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIG9mX3BoeV9zaW1wbGVfeGxhdGUpOwo+ID4gPiAt
ICAgICBpZiAoSVNfRVJSKHBoeV9wcm92aWRlcikpCj4gPiA+IC0gICAgICAgICAgICAgcG1fcnVu
dGltZV9kaXNhYmxlKGRldik7Cj4gPiA+Cj4gPiA+ICAgICAgIHJldHVybiBQVFJfRVJSX09SX1pF
Uk8ocGh5X3Byb3ZpZGVyKTsKPiA+ID4gIH0KPiA+ID4gLS0KPiA+ID4gMi4zNC4xCj4gPiA+Cj4g
Pgo+ID4gLS0KPiA+IFdpdGggYmVzdCB3aXNoZXMKPiA+IERtaXRyeQoKLS0gCldpdGggYmVzdCB3
aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
