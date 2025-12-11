Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D212CD41C3E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZM/YnntNOv3plmiplLNWFuhWk0IF4jk/CaHBLh58g0=; b=c1Byvbkkm+Nw4g
	P0WFUYfctHBjS25qhBfaQj1WSe+axdqVY3zALB6C8LhbHVyAadcZPSx5gkc1Z+LsppNs5P24imtGP
	UqtsMzeLhmF7XZnq1nVD5OwIQBBjPzZ0dPv0/fXLEd5fLRf5P7sUuthOP84WBfwQ3eSqOvCGAwnss
	fbgu/Bx8DWia2A3AScOsvxzxXa60ak0JbFf988oFUIt/6NVIB8JvMP/u8n1NNl7w8H4+1FiSpnLYQ
	pI7Fn7lS/bFupzVqXGCe/cL3gvOv15pRSGIDLUzWm4KJkT5k+BHCa3RGVpLO46LSIdck6mDWMhqG0
	8jPL3vLQQMWgXcLQ5rYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThNJ-0000000GhxU-1vTd;
	Thu, 11 Dec 2025 14:10:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThNH-0000000Ghx8-07Pw
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 14:10:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXwfO1775361
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f9fVE8csb/uWNk+XFFad/gngGb7HZwjYc98wjxog9gY=; b=Ymb/ivhYfYsV0nLf
	1mI3lBoJMov9gMRQXj5/RSDopv0jvNF7LuqBWwkr/6cosvyHE11U7O9Cw6soevu3
	zNA1Pc++xIkozEBC9moLgiOjQTxBjKyu74zBbdI2mZd/LduMVGwS8mDAT3igvtcx
	q1OJSl9D6f55XX66WXaiZRftvt7wxSBlLZ7b4Pcad3AomY4KiTaS+9pnEQ1ypnZf
	I3RkaqcVNIqj7vviZ5H6LYTQXeSKmt8cT3pz5QCUmUyJoHttsqKzGKW24uT+JQMH
	M1nCZ7pSx1zJ+TLo3xXi32mwhW50abBe4QtW7Nn9uG9mFllzAcNe/uPpRbOEF8U3
	ioxF5g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayt709596-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:10:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e235d4d2so38523985a.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 06:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765462228; x=1766067028; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f9fVE8csb/uWNk+XFFad/gngGb7HZwjYc98wjxog9gY=;
        b=frUxcCEQSX6N/gGSCtvseZDBFVJifZVuRdXkWov3LYTogbPPXQsU3h3bwBHu6r1Kng
         /d4B6Z9+6icxbhpOEWcfh+CTG4oBTuDvE3/zkkPP0P6AiunRAe8Lvk74aanDqqRGYfMP
         +WE/L3y3L6mlQFyA+CilrtOCiBxE386EWs3byzaRI7fpcovQzeoYHOQ/+QT49Ev07nhA
         DP+oWm+FMX2Q0vYgo3jsohY1auoAr+5mCOwSQ5rAi1wKeDzMr9ixCRu6H3sEN5cDJ6v5
         OkAQAUf4ebO8FQH31nLobZHPpNmUBpWn1CebxYlcT9jKDD1q/QA4zSEhdm/pXu+l42am
         JRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765462228; x=1766067028;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f9fVE8csb/uWNk+XFFad/gngGb7HZwjYc98wjxog9gY=;
        b=YSYJm8VmW6TEaZ9W3WfVm2wMrVvSjysKeM9MyWgbcXiaKvLZHML8LLoFewlwXhaeqF
         ZkyX+CptpCp8WMdfbKhdqUryIQLZtpXP761U74bpj2heI0xa6oZvFVrbvJRq2iIpYHXx
         P+aaS956uvAK3gi+LVodjvGcXe23opCr79aQJNnQ2dMwmiPSN22nKo4+P7qZxhU3zTwN
         I+tuU+SZmoEdrWYOh9WmQcRUNIVrUgdgvcG1j5ERv6WjxIOHnId/DVeRxcc1xArlQtbC
         FWXf/x+LEU9a1fGvj7fwnFhqRJsWEVYOnlS2WXQDE3k1Q/i+7vnJMcdLt+NMtcu2Q7WP
         tW2A==
X-Forwarded-Encrypted: i=1; AJvYcCVZrZ9OUEEf5Gn9Nu23rGE4nAZVENs36uBkq4HOGOO7gu90PReYIIdjNjRvVXuW+vilH4xqLZHlydI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZJlWXH/QMoPDnhC3S5uAQVSkNM8a15lssJByYRZFAM7NKJ7Mu
	qAJJ3re0Er/SjrwVXezJf2aE1ZBoXjPtVDVHvoXjRXXOZVkqBTI8A4PWXjG2YF10KkvLUJo5pJ7
	1BfOr6F+KxorNPomH2OTXypz3MDFNg9cWsiP/IurJpXVtEMiv6oD2fo8v/JeLXq5d6YQ6ORTAcT
	4UpubgumIWLCZ1u+sE+yzibhlkjRJkpNqj7CWI9O8Dhus=
X-Gm-Gg: AY/fxX4O7T54Wwx0BGiuu5egDyJ6UTQGzwniH01UYssSp11qbs6OIxHslS/a5NQvPnP
	VaSjjL2abrxsXDgImT9F+WcfpSejxzkd8F5NC6L853Tmy/JYcLiwTCAuXmjc5ES0MC8nD2REnZu
	OcsDhK0Nqanq3YAyFfe4w7ESvTy5gar3RhO505ZIgQ5wBiOj+he7OKg/c7+lmI5dcvS0PsY5ei5
	zHu7VlP3G+hfxCPVlnCgVvT0do=
X-Received: by 2002:a05:622a:4c06:b0:4ee:15af:b934 with SMTP id d75a77b69052e-4f1b1ae8bd5mr93069081cf.79.1765462228528;
        Thu, 11 Dec 2025 06:10:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpK3SYJe2XpZn4Hlqo3fKfakuoYUXzuu760MXQIEPlVA14YYOM3uy1YLCEyd+ZgPVNELIHDXaPMSvOh6cCCCM=
X-Received: by 2002:a05:622a:4c06:b0:4ee:15af:b934 with SMTP id
 d75a77b69052e-4f1b1ae8bd5mr93068561cf.79.1765462228119; Thu, 11 Dec 2025
 06:10:28 -0800 (PST)
MIME-Version: 1.0
References: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com> <h3jx5drjfg4xa56lrbdu3xxic53hez35jotkrznozawjjljfh3@kwo6hdccfkus>
In-Reply-To: <h3jx5drjfg4xa56lrbdu3xxic53hez35jotkrznozawjjljfh3@kwo6hdccfkus>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 15:10:17 +0100
X-Gm-Features: AQt7F2rqhr4nk7eHsSkBo4hLVWzwWEv-Xv7NwNXcidV-s9Bn9gPrd9AbpErLr7w
Message-ID: <CAFEp6-3vvudXm14QMtP=nD=N5Ur415JLaNF7HnBkSfiZMa_WzA@mail.gmail.com>
Subject: Re: [PATCH v2] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDExMiBTYWx0ZWRfX2EUNYR4SXRZP
 lyErh1WjxuRkVhoDmXbY/TVPfyGk0jEFlf+P2VqLe5zsyudoOu8aQfI06LzzQHVNyOMLTHgfY3j
 qOvkfJ6VPpZO3Xiaab7ZIbqO64t6ka+7hnmwOT5T/Rs1t8e5f9/NMDfwwifttG831g6Zrz6bpJ2
 7l8JMeIYK2kifQnoQgf6WNrpBGaFZneBBy0YB9JxV124SRMWreyTQrCZBAhvFeA+DfTvkLVYVbZ
 U2G+NzJjTnyCvfO/s5dYghx9P0AOSNGFNyH+whWDNeOAVTwwPkiQltGlXRNEG9RYDM5+RodILUz
 BD7CZ/ETo67/tIly85/QSyCQXHyO6WHYFv6I//4K6yXw1Rg3pZ2tQUsQIBcRZv8E2U1TCm7N4Vp
 w43IKZOFQgbMpxtic6G87qaCvNEDHQ==
X-Authority-Analysis: v=2.4 cv=WYIBqkhX c=1 sm=1 tr=0 ts=693ad0d5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=uUKr9bAsF2V2gpNUp6kA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: aiDRYKauKM8RCZvqiTol0dfbo6v6iKet
X-Proofpoint-ORIG-GUID: aiDRYKauKM8RCZvqiTol0dfbo6v6iKet
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_061031_206022_1B322A40 
X-CRM114-Status: GOOD (  24.86  )
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

T24gVGh1LCBEZWMgMTEsIDIwMjUgYXQgMjo1N+KAr1BNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIERlYyAxMSwg
MjAyNSBhdCAwMjo0ODozNlBNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPiBFbmFibGlu
ZyBydW50aW1lIFBNIGJlZm9yZSBhdHRhY2hpbmcgdGhlIFFQSFkgaW5zdGFuY2UgYXMgZHJpdmVy
IGRhdGEKPiA+IGNhbiBsZWFkIHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRp
bWUgUE0gY2FsbGJhY2tzIHRoYXQKPiA+IGV4cGVjdCB2YWxpZCBkcml2ZXIgZGF0YS4gVGhlcmUg
aXMgYSBzbWFsbCB3aW5kb3cgd2hlcmUgdGhlIHN1c3BlbmQKPiA+IGNhbGxiYWNrIG1heSBydW4g
YWZ0ZXIgUE0gcnVudGltZSBlbmFibGluZyBhbmQgYmVmb3JlIHJ1bnRpbWUgZm9yYmlkLgo+ID4g
VGhpcyBjYXVzZXMgYSBzcG9yYWRpYyBjcmFzaCBkdXJpbmcgYm9vdDoKPiA+Cj4gPiBgYGAKPiA+
IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0
dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAwMDBhMQo+ID4gWy4uLl0KPiA+IENQVTogMCBVSUQ6IDAg
UElEOiAxMSBDb21tOiBrd29ya2VyLzA6MSBOb3QgdGFpbnRlZCA2LjE2LjcrICMxMTYgUFJFRU1Q
VAo+ID4gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPiA+IHBzdGF0ZTogMjAwMDAwMDUg
KG56Q3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+ID4gcGMgOiBx
dXNiMl9waHlfcnVudGltZV9zdXNwZW5kKzB4MTQvMHgxZTAgW3BoeV9xY29tX3F1c2IyXQo+ID4g
bHIgOiBwbV9nZW5lcmljX3J1bnRpbWVfc3VzcGVuZCsweDJjLzB4NDQKPiA+IFsuLi5dCj4gPiBg
YGAKPiA+Cj4gPiBFbmFibGUgUE0gcnVudGltZSBvbmx5IGFmdGVyIGF0dGFjaGluZyB0aGUgUVBI
WSBpbnN0YW5jZSBhcyBkcml2ZXIgZGF0YSB0bwo+ID4gYXZvaWQgYSBOVUxMIHBvaW50ZXIgZGVy
ZWZlcmVuY2UgaW4gUE0gcnVudGltZSBjYWxsYmFja3MuCj4gPgo+ID4gUmVvcmRlciBwbV9ydW50
aW1lX2VuYWJsZSgpIGFuZCBwbV9ydW50aW1lX2ZvcmJpZCgpIHRvIHByZXZlbnQgYQo+ID4gc2hv
cnQgd2luZG93IHdoZXJlIGFuIHVubmVjZXNzYXJ5IHJ1bnRpbWUgc3VzcGVuZCBjYW4gb2NjdXIu
Cj4gPgo+ID4gVXNlIHRoZSBkZXZyZXMtbWFuYWdlZCB2ZXJzaW9uIHRvIGVuc3VyZSBQTSBydW50
aW1lIGlzIHN5bW1ldHJpY2FsbHkKPiA+IGRpc2FibGVkIGR1cmluZyBkcml2ZXIgcmVtb3ZhbCBm
b3IgcHJvcGVyIGNsZWFudXAuCj4gPgo+ID4gRml4ZXM6IDg5MWE5NmY2NWFjMyAoInBoeTogcWNv
bS1xdXNiMjogQWRkIHN1cHBvcnQgZm9yIHJ1bnRpbWUgUE0iKQo+ID4gU2lnbmVkLW9mZi1ieTog
TG9pYyBQb3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+IFJldmlld2Vk
LWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+
Cj4gPiAtLS0KPiA+ICB2MjogTW92ZSBydW50aW1lLXBtIGVuYWJsaW5nIGFmdGVyIGRldl9zZXRf
ZHJ2ZGF0YQo+ID4gICAgICB1c2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIHRvIGZpeCB1bmJh
bGFuY2VkIGVuYWJsaW5nIG9uIHJlbW92YWwKPiA+ICAgICAgcmV3b3JkIGNvbW1pdCBtZXNzYWdl
Cj4gPgo+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCAxOSArKysr
KysrKy0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTEg
ZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXF1c2IyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4g
PiBpbmRleCBiNTUxNGEzMmZmOGYuLmM0OTZhY2JhZDBiYiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+IEBAIC0xMDkzLDE5ICsxMDkzLDEwIEBAIHN0YXRp
YyBpbnQgcXVzYjJfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAg
ICAgICAgICAgICAgIG9yLT5oc2Rpc2NfdHJpbS5vdmVycmlkZSA9IHRydWU7Cj4gPiAgICAgICB9
Cj4gPgo+ID4gLSAgICAgcG1fcnVudGltZV9zZXRfYWN0aXZlKGRldik7Cj4gPiAtICAgICBwbV9y
dW50aW1lX2VuYWJsZShkZXYpOwo+ID4gLSAgICAgLyoKPiA+IC0gICAgICAqIFByZXZlbnQgcnVu
dGltZSBwbSBmcm9tIGJlaW5nIE9OIGJ5IGRlZmF1bHQuIFVzZXJzIGNhbiBlbmFibGUKPiA+IC0g
ICAgICAqIGl0IHVzaW5nIHBvd2VyL2NvbnRyb2wgaW4gc3lzZnMuCj4gPiAtICAgICAgKi8KPiA+
IC0gICAgIHBtX3J1bnRpbWVfZm9yYmlkKGRldik7Cj4gPiAtCj4gPiAgICAgICBnZW5lcmljX3Bo
eSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEwsICZxdXNiMl9waHlfZ2VuX29wcyk7Cj4KPiBO
by4gcGh5X2NyZWF0ZSgpIGNoZWNrcyB3aGV0aGVyIHRoZSBkZXZpY2UgaGFzIHJ1bnRpbWUgUE0g
ZW5hYmxlZC4gQnkKPiBtb3ZpbmcgdGhlc2UgY2FsbHMgbGF0ZXIgeW91J3ZlIGRpc2FibGVkIHJ1
bnRpbWUgUE0gZm9yIHRoZSBQSFkuCgpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBJIGNh
biBhZGRyZXNzIGl0LCBidXQgaXMgdGhlcmUgYQpzcGVjaWZpYyByZWFzb24gd2h5IHRoZSBjaGls
ZCBQSFkgZGV2aWNlIHNob3VsZCBjb25kaXRpb25hbGx5IGVuYWJsZQppdHMgb3duIHJ1bnRpbWUg
UE0gYmFzZWQgb24gdGhlIHBhcmVudOKAmXMgc3RhdGU/CgpSZWdhcmRzLApMb2ljCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
