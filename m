Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8123FD3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 21:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hphKaICJihhRD7mm1ERHL4J6JdfeY/MU+NphYX1gbYU=; b=pCTV7dGJ15TSJj
	glJEP2i9FC78/NCmUYOO51hHKmwn3SUKHkAwtjFwu5FXy8Y4/uUIUpHK24NYAsKkQQH4LC3A3qLb+
	SNNm8m0LKRfgHM/eCa6iHKn+kqS4p1/Pq5Is5zk6VipVbrA6k3qRuq2W9e/ZW90r8Axf4papkoErj
	JYVHD1RGfDqE3yPL4TRreUwDnMKPs0veVIYMjZgD5+znQ3WZrEh1kHrMgRmwt1ybCvzLt4N5aslwg
	L5liarkLVnBFu1/fv2/8dQJ4dvWOmoIE4crsku6tf1/bmBojgS5PtJ1zmTGYGrkb+QKWu+0JeYJbE
	iDqWuaNoGBXe+oLNWx3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSiXB-0000000DXp1-2zZc;
	Mon, 08 Dec 2025 21:12:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSiX8-0000000DXog-1laH
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 21:12:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8J8OEo1327590
	for <linux-phy@lists.infradead.org>; Mon, 8 Dec 2025 21:12:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2wXVxWzLB2YJyzX93iyuR7SAleK6d/pCIxR6sxGbwmQ=; b=PYblDhBlvpAedbNY
	MQN8gWHzuAvv7smhc73ZHghH/W3BxRrxCBjI6LWf6nUq+4A/MyiZEEcNeHR/TfyH
	UKZWE/jcDcZvAC1aGPXFiXyVxa++efwY+KkTUB+v/w490P37ovgZKsN7Ozstiotv
	F+YhuzSlU9tKcz0ieG6tqQM3qXGFpmQtPB5a3mm5iKz9DB9pkr/9AUXX/sFDhlfv
	H/RUmaVLgxxQVt6EEuYDmSYhkRF8NI8hxyuaDhGzC+C7aYbNtmZNGCalMViu9aoq
	MZdh04p8e6bNilU7tpq2+w6dGtRWfHB0baOH+hmZq7FlVcN14JiDgrXQLu70vOGI
	EL96uw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax4jng96n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 21:12:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee4a0ad6a6so98658761cf.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 13:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765228355; x=1765833155; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2wXVxWzLB2YJyzX93iyuR7SAleK6d/pCIxR6sxGbwmQ=;
        b=KeS4OsqIa7lwk8lTBoA9F/A/Soghp6DCae70cG7UJ8kWYqCfZfFqKn+751Lo3EH+F0
         +QhxEZAcb4MOa2l6bDyyrXwmG4zoMKpZTQlKc+5LAXgnnywM8OD+TcFIzpytcfEIWR9b
         JaEV1xm6tCzboXt4xz1xiwZkBM1/HrjGzgmBm4Lgf0fzQAxqaRvVS7OjM2IFXyknYXGC
         j6L0Rk81nA3dyn8VwmuEkQst0o/FqeyuPO69uqoATtzgyXfX9FLjG5pwp+VKlzWPqxzR
         pr3k6FVuyd5hFUP8Db8O/kg2dileYWQakq1167mES4EuisIRxYm4rLrMTPYg9SYq7djr
         f74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765228355; x=1765833155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2wXVxWzLB2YJyzX93iyuR7SAleK6d/pCIxR6sxGbwmQ=;
        b=Fmzp4oh/vQm6pcVk4t1ny/yhY2W/ZEZyJKFklXw3sHv839Y4M7YWI+VdZyN4xAubLm
         cp0CyyEcZ2ZL0bGHV5ZcTyhGaGNXhl5tmQPcX86d/rEdparZBjbxVkx7BUyKErB1sE5Q
         W9V4xUfKN/IRWjShrE5HYmHRqLsvs3tC8eMFPWKYhK5oESUlq3NIzCE29A2ZTR6dG8sR
         vHj2rIKPG970ZTl3cQIJ2iGXkuXEOT4Kp1OSyKVwJclLOH8BlfSo8ve2isZ4Vztj6bGI
         ieshvEZvOjtha6jYjo4pbUS4w0ITwIPq66Y0teLUWTlQY+nqquTZf+W7Bui4xf8bGt7i
         G0GA==
X-Forwarded-Encrypted: i=1; AJvYcCV4oqS95SVlpdZOMtqd9LWEJY7eXuiBymgajOjTIR5gzbELthm/K1hPKcbaQbMjQ+8WE+p7cDV+YRc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNwqizWZ7Pxrtz/8vpTXymQRNRIUz9oXRzveLxUKMKE2cf/Y+U
	BembXnJ0qlK2tW6SUQTN4eFyP2qO8ACI8xFLJSNaZ78XpWZiRcbelQZmJGHpanYAflX+LFJjcv+
	RvvROMprOyCtY24rEupw/0tedD8ub3tlPiBR6jT7q6zQVzUgVSsng/jefjxm+iQ9R7iAvWyffTE
	WxQVP5S0xutfMMDQOXD/fUEO1VJz5KXvXKlL/elRKYghY=
X-Gm-Gg: ASbGnctynNl041oV2Kqy7vsz0wVxLE9ngKrKT15gL9KRxngEXRPFR75kJVGS0azax3e
	BCyzlFp/A/uDOxbQZA9mnnZQDHfzmh55T0K+mh74jjWS90mow+UCaXWY32DAv0+QwvEmB004WDL
	MPxcP9QrICJBeu65APnHQPSoAmVYhnROh3lNTFJgINe9nv5puY1XwGHOQwe8EY9BOZvalmECXaS
	EdpiU2MIUQugvp6F/33jLsp/8Gd
X-Received: by 2002:ac8:5a47:0:b0:4ed:a6b0:5c26 with SMTP id d75a77b69052e-4f03fedb77bmr153874271cf.58.1765228355153;
        Mon, 08 Dec 2025 13:12:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGe1M06ch7pE2w0WdG0trsE/2BC0FfpBDlUWnyfO2pFjrta0W1cdhfbmkI6SL9s196Tyya+kYXmMXOoe+362Hk=
X-Received: by 2002:ac8:5a47:0:b0:4ed:a6b0:5c26 with SMTP id
 d75a77b69052e-4f03fedb77bmr153873991cf.58.1765228354726; Mon, 08 Dec 2025
 13:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com> <iua4oe52yb7xw4jtdg2n6bsi7m2aqdjcb2qsk6lrxrf57yeuxd@mseysn3kwuck>
In-Reply-To: <iua4oe52yb7xw4jtdg2n6bsi7m2aqdjcb2qsk6lrxrf57yeuxd@mseysn3kwuck>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 22:12:22 +0100
X-Gm-Features: AQt7F2oXnZhdO8_nIK2_6eMclCv5V-dyNjpk7mB2Qx5E_FfZJNASfXPIWqujn8w
Message-ID: <CAFEp6-1+VCT7Wr2Ajh+d1dyEk7yfcsVpR2zxr0Eq3bww-yt2kw@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Authority-Analysis: v=2.4 cv=dZSNHHXe c=1 sm=1 tr=0 ts=69373f44 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=uUKr9bAsF2V2gpNUp6kA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: hsDVlXEaFRNAmzmvlJreLClXB6S-dbpA
X-Proofpoint-GUID: hsDVlXEaFRNAmzmvlJreLClXB6S-dbpA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE4MCBTYWx0ZWRfX9KJbncas+XDg
 5i7T8cAiZekjiYVA9BJNgYr0hUOi/SRXNhPmvXvL/XhZBS64pCcpCoRBuFy2eX5LKHt+OMrm8vm
 j4Ui/5emr8bxx2IPv6FWztK+4GmonBV06gUSSRX8UAMfGvrz5kO/NofieQfkTsE/qgn7hYQP3v0
 lgTys1NrkA0IZTW8bgC8YKZDr0Ac+3aighupeuaf6HYm6icLrCTSy+cbeio2JbcWmQY7NIOb9xm
 cddHt/Ba8Oqi0j+3mCT5Ckhwugc69dRDcwZHfu0uFyPTaz1HrcfTlJrddzEbHBCZ/s5QGdGdCsK
 ferTp31tpgV6FrwIOzHX7XCjXOXmv3Ip9kBEETOo0f7JsD4r5DhKHRz4sIXhPTKraBclL/ecmgL
 /gkq7Q09uQ94epWHu0QhGT+TXAOrEA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_131238_487094_EAEDDD59 
X-CRM114-Status: GOOD (  22.43  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCA5OjEy4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8ZG1pdHJ5
LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRGVjIDA1LCAy
MDI1IGF0IDA1OjA0OjM3UE0gKzAxMDAsIExvaWMgUG91bGFpbiB3cm90ZToKPiA+IFJlb3JkZXIg
cnVudGltZSBQTSBzZXR1cCB0byBlbnN1cmUgcG1fcnVudGltZV9mb3JiaWQoKSBpcyBhcHBsaWVk
IGJlZm9yZQo+ID4gZW5hYmxpbmcgcnVudGltZSBQTS4gVGhpcyBhdm9pZHMgcG9zc2libGUgZWFy
bHkgYXV0b3N1c3BlbmQgYW5kIHByZXZlbnRzCj4gPiBxdXNiMl9waHlfcnVudGltZV9zdXNwZW5k
KCkgZnJvbSBiZWluZyBjYWxsZWQgYmVmb3JlIGRyaXZlciBkYXRhIGlzCj4gPiBpbml0aWFsaXpl
ZCwgd2hpY2ggY291bGQgb3RoZXJ3aXNlIGxlYWQgdG8gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2U6Cj4gPgo+ID4gYGBgCj4gPiBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIg
ZGVyZWZlcmVuY2UgYXQgdmlydHVhbCBhZGRyZXNzIDAwMDAwMDAwMDAwMDAwYTEKPiA+IFsuLi5d
Cj4gPiBDUFU6IDAgVUlEOiAwIFBJRDogMTEgQ29tbToga3dvcmtlci8wOjEgTm90IHRhaW50ZWQg
Ni4xNi43KyAjMTE2IFBSRUVNUFQKPiA+IFdvcmtxdWV1ZTogcG0gcG1fcnVudGltZV93b3JrCj4g
PiBwc3RhdGU6IDIwMDAwMDA1IChuekN2IGRhaWYgLVBBTiAtVUFPIC1UQ08gLURJVCAtU1NCUyBC
VFlQRT0tLSkKPiA+IHBjIDogcXVzYjJfcGh5X3J1bnRpbWVfc3VzcGVuZCsweDE0LzB4MWUwIFtw
aHlfcWNvbV9xdXNiMl0KPiA+IGxyIDogcG1fZ2VuZXJpY19ydW50aW1lX3N1c3BlbmQrMHgyYy8w
eDQ0Cj4gPiBbLi4uXQo+ID4gYGBgCj4gPgo+ID4gRml4ZXM6IDg5MWE5NmY2NWFjMyAoInBoeTog
cWNvbS1xdXNiMjogQWRkIHN1cHBvcnQgZm9yIHJ1bnRpbWUgUE0iKQo+ID4gU2lnbmVkLW9mZi1i
eTogTG9pYyBQb3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+IC0tLQo+
ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCA5ICsrKysrLS0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiBpbmRleCBiNTUxNGEzMmZm
OGYuLjk3YmMzNzU1YTM5MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXF1c2IyLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1
c2IyLmMKPiA+IEBAIC0xMDkzLDEzICsxMDkzLDE0IEBAIHN0YXRpYyBpbnQgcXVzYjJfcGh5X3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgICAgICAgIG9yLT5o
c2Rpc2NfdHJpbS5vdmVycmlkZSA9IHRydWU7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgcG1f
cnVudGltZV9zZXRfYWN0aXZlKGRldik7Cj4gPiAtICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYp
Owo+ID4gKwo+ID4gICAgICAgLyoKPiA+IC0gICAgICAqIFByZXZlbnQgcnVudGltZSBwbSBmcm9t
IGJlaW5nIE9OIGJ5IGRlZmF1bHQuIFVzZXJzIGNhbiBlbmFibGUKPiA+IC0gICAgICAqIGl0IHVz
aW5nIHBvd2VyL2NvbnRyb2wgaW4gc3lzZnMuCj4gPiArICAgICAgKiBFbmFibGUgcnVudGltZSBQ
TSBzdXBwb3J0LCBidXQgZm9yYmlkIGl0IGJ5IGRlZmF1bHQuCj4gPiArICAgICAgKiBVc2VycyBj
YW4gYWxsb3cgaXQgYWdhaW4gdmlhIHRoZSBwb3dlci9jb250cm9sIGF0dHJpYnV0ZSBpbiBzeXNm
cy4KPiA+ICAgICAgICAqLwo+ID4gKyAgICAgcG1fcnVudGltZV9zZXRfYWN0aXZlKGRldik7Cj4g
PiAgICAgICBwbV9ydW50aW1lX2ZvcmJpZChkZXYpOwo+ID4gKyAgICAgcG1fcnVudGltZV9lbmFi
bGUoZGV2KTsKPgo+IEknZCBsaWtlIHRvIHBvaW50IG91dCB0aGF0IHRoZSBwbV9ydW50aW1lX2Vu
YWJsZSgpIGhlcmUgaXNuJ3QgZm9sbG93ZWQKPiB1cCBieSB0aGUgcG1fcnVudGltZV9kaXNhYmxl
KCkgaW4gdGhlIHJlbW92ZSBwYXRoICh0aGVyZSBpcyBub25lKS4gV291bGQKPiB5b3UgbWluZCBz
ZW5kaW5nIGEgZm9sbG93dXAsIGNoYW5naW5nIGl0IHRvIHVzZQo+IGRldm1fcG1fcnVudGltZV9l
bmFibGUoKT8KClllcyBvaywgSSB3aWxsLgoKTG9pYwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
