Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD4EBD59D99
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 08:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1pmNa+t0axjirDclO4yTdiqP3haOtXYYMm2Eyhlj0s=; b=Zz9uLXO6DqV3cP
	HwZ1PTrlIaaQEr+XbdkIEcRcmlF+KMJ5+rNcqsvF7AldzZtOHAk6EKgkNFsHy1OX75VEnq/cKNqG8
	DPQIDmX+y8H1MppU8hFS3slJg9nqnMldno7jvslou+1elF3ho5qjmbdHUZhFeDoFbtuTY6dx+bi23
	O0VnahgYlJ1VovToK+wUtOAaPrIxwCdnRrR7hb4YEObDLsQrmm04+H7WpivnCmaXsaiupfCzvFQMA
	mi1+D3SqYW9CBPPSnz3hsJoglU3ynlUTmgaKfxG4eXn3+z4HXnJgVAprr+/zVocwfMfMhkZKvWjqr
	yVhMFY5zHMmfDwGuhR0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Gv-00000003IcC-3FeW;
	Mon, 15 Dec 2025 08:49:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Gt-00000003Ibk-0DAK
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 08:49:36 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BENOLrE3375432
	for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 08:49:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mQ5PQQnRVcWN/TdWh3HTFVD2m/1QwxYxUs81P/+/+rw=; b=NVb6c4X3Am3dSGJ/
	RTNPDYGy+q4SuuF+gCdHOV2y+aZotqJ4V9hxMyRlppVxdz5xXAMvxdHzxvlALqgP
	r5csZ7tkr2q5qOg1XntSZ07k1OhQ6wEnhzU6pZakRzpemzZtwNyje9iId6vFJDAp
	lbt942GqlFLvRPrh5iUPX6FwNIFqPfWNmwFYal6NVcohg4Ov0BR9ifdPHTR83t94
	PhM+9NEkST9B+opmJrxyz/+MasSuQ7l7Gw9z/EhHc8Aq++dMMB3cuS34TkupVj4s
	oo+VHZQXy4jY9yP0ahArn6SrNlBq5znJX+fsnNTlRwzQLmAlBz5xrijgqS6Prqk/
	MBpymg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11dsbtnd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 08:49:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3dfe072dso86475371cf.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 00:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788573; x=1766393373; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQ5PQQnRVcWN/TdWh3HTFVD2m/1QwxYxUs81P/+/+rw=;
        b=gfM7lBNuphlqPWJmKoXu0evIsiNXH4IS1zc7MMGDdJke/1WVY474+9T5xLyIm4rana
         +l+omfKDdnykJiI/+B6H6mdXmka7xfaxrMcdz0o/qc3e7fnIKN20DFatPmLKrhPTXf4y
         OXnpFF1QhL2VUWb46amqLAWDejdjtxgIsvlMoKOy+r8PgXf7+Xpt99fkrnPkodSrEXzZ
         1QsiTykfhqv+F01P+Wc2RG4NhrEIuC0hE9WnwBICKcosCHGrMtARc/kAxysfUmnvQIJq
         jPPrKeLWgtW7PuHm9On/yuC6tj5ZHPj72tAfovStq1RSGBvjO3++vu7Wul74kwq7vV7j
         b5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788573; x=1766393373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mQ5PQQnRVcWN/TdWh3HTFVD2m/1QwxYxUs81P/+/+rw=;
        b=usivu5LwmaioAQPD0kAD4Fx5xcZR9dNibAn2uYCZNSNEZIeD75MkvQhJkPh0Rcsfzk
         8AM18EJwjwdsBy+onRIj/oNY9wH7mTsA2wRdLb7kYYBpM8NVMtPfoqFijnkc0XQONlQM
         d6xlzeSH5JTBfRAdQFSWolFh2osVziVrL/fx52gqhR8eszX4t8BQUeFoL9m342X0/++I
         nmykLrAvDCASr3qcIfSK+f+r6xZzZplszkq/dT/I5ox8MWF4Imcy9QPahVsKOACva6Fc
         flop5Vq2DnEpBaqeUUsTLKULlZbPvmZOPaPQ2W1KKoB1kcUfUezCg7hAflXubB8lm3gr
         dVPw==
X-Forwarded-Encrypted: i=1; AJvYcCWOn/5UkZ+qRrLEjbiq5nW70TgJPX+au1EuZ4eT1nmB7f10EUIrPQRBI6IwDncxIWl8IuStoUFUZWs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZITPD/BKEfakPbAXwKCdJqCv5X8cJ+6AMFo7j/rJWYo58yLyK
	xsOgeqac1XtH3J/qTiAMNbquAFt3dO5UcZKkYvlBtOnL1K/8C1k1wIzBrjmDIZe+wGvGe8yIxKk
	hK/6Scc45+hAnam6snvtUCvSHoz9ceSQAkGT5LX2RlxXrxzogo6BpnjXZHQItX+mdKpJjekDMFb
	jPwg0saL7Q81FZ6sXnX60603VETPoOrgeOdrDYEkUuznU=
X-Gm-Gg: AY/fxX7V88Hj6i4xJBz+uSyI/3EkroAo4SiH5gQtwPyX1+c3jHRPpnBw8+mrIhdGsvY
	snGHV4QGEGJbaMDOOT59QTIRL1DFMJNrPg0o3TROROJfvmYg1S6cRU3skzOHuLCoGqjjWl5Z4Vl
	IGy2yVnXsiYLQpEvL/MJfbioUp+lmV5MyoYrfQDb1BLuvpZNiL6D7kvwWc1UuA3ouBAI2KiEexm
	tlSwVFfP7wibS/MxjEo6/eIjMM=
X-Received: by 2002:a05:622a:8:b0:4e2:e58a:57e1 with SMTP id d75a77b69052e-4f1d052e6a6mr138495231cf.37.1765788573038;
        Mon, 15 Dec 2025 00:49:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV0yyCMnskxyPhkEOErwD7wOeTkRSWmeUyBV/oan/XvfnG3tlv4JH3W5ZnZ+t/OzoynncoUghIRfRNUdjDISY=
X-Received: by 2002:a05:622a:8:b0:4e2:e58a:57e1 with SMTP id
 d75a77b69052e-4f1d052e6a6mr138495101cf.37.1765788572561; Mon, 15 Dec 2025
 00:49:32 -0800 (PST)
MIME-Version: 1.0
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com> <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
In-Reply-To: <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 09:49:21 +0100
X-Gm-Features: AQt7F2o38xi8ho4CfKQXWBAUpeZnh7vZDoyvRW1DlgsDL7esYEViphFIxHxUUkA
Message-ID: <CAFEp6-1nQHUTQwaxX0TrjFuKsAGYjdMHG0018z8FqsXZQ0Nffg@mail.gmail.com>
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
X-Proofpoint-GUID: vQxKeL4MmUqh7C_fRr4SgSocyEqHu64A
X-Proofpoint-ORIG-GUID: vQxKeL4MmUqh7C_fRr4SgSocyEqHu64A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MyBTYWx0ZWRfX5SlvEk2eCYKO
 Tv83Uge5gZc0q7djoIbiZcBpY0aJ2kc467YdcEyCX2/zKq6oSbK8wDcNBQ/NCNjlxHdWfRDiiNg
 A7YliyotA8xUPb3FjOB/cRbILzX/3Q00ssVkf0aifGCWOMpAq7YkF+PhweEkVd3117eL9dVr9ay
 LDIQcIluK5d6W80QunEOqckIoqfR2ZTzeN9F2Of5CtIv/1kgdikEuAW0m3m7ezMgg8X9JVDbwXE
 8LAulzcNXHEF+HwbuYFNSS3XQriWjfVyTZLdJ0gA/nFHf5hDP9C+a7MLxW14Mj0YFtROz6Dj+bB
 fmkwUXYorhX3HaKoL1oiIPyuoIjJvB/cAnCfEr/mzrnrapAr9UqTx7XKPtFZn9KQ7IEcTq1PPAN
 QWdnVUFpiS7P4rA+xEcrAPoefqOaWw==
X-Authority-Analysis: v=2.4 cv=cfLfb3DM c=1 sm=1 tr=0 ts=693fcb9d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=S7GYT1DHwJ6J2ODJtQcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_004935_235352_5F7B2B2F 
X-CRM114-Status: GOOD (  31.37  )
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

SGkgRG1pdHJ5LAoKT24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgODozMOKAr1BNIERtaXRyeSBCYXJ5
c2hrb3YKPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBU
aHUsIERlYyAxMSwgMjAyNSBhdCAwNDozNTozNlBNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6
Cj4gPiBFbmFibGluZyBydW50aW1lIFBNIGJlZm9yZSBhdHRhY2hpbmcgdGhlIFFQSFkgaW5zdGFu
Y2UgYXMgZHJpdmVyIGRhdGEKPiA+IGNhbiBsZWFkIHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJl
bmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzIHRoYXQKPiA+IGV4cGVjdCB2YWxpZCBkcml2ZXIg
ZGF0YS4gVGhlcmUgaXMgYSBzbWFsbCB3aW5kb3cgd2hlcmUgdGhlIHN1c3BlbmQKPiA+IGNhbGxi
YWNrIG1heSBydW4gYWZ0ZXIgUE0gcnVudGltZSBlbmFibGluZyBhbmQgYmVmb3JlIHJ1bnRpbWUg
Zm9yYmlkLgo+ID4gVGhpcyBjYXVzZXMgYSBzcG9yYWRpYyBjcmFzaCBkdXJpbmcgYm9vdDoKPiA+
Cj4gPiBgYGAKPiA+IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVy
ZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAwMDBhMQo+ID4gWy4uLl0KPiA+IENQ
VTogMCBVSUQ6IDAgUElEOiAxMSBDb21tOiBrd29ya2VyLzA6MSBOb3QgdGFpbnRlZCA2LjE2Ljcr
ICMxMTYgUFJFRU1QVAo+ID4gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPiA+IHBzdGF0
ZTogMjAwMDAwMDUgKG56Q3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0t
KQo+ID4gcGMgOiBxdXNiMl9waHlfcnVudGltZV9zdXNwZW5kKzB4MTQvMHgxZTAgW3BoeV9xY29t
X3F1c2IyXQo+ID4gbHIgOiBwbV9nZW5lcmljX3J1bnRpbWVfc3VzcGVuZCsweDJjLzB4NDQKPiA+
IFsuLi5dCj4gPiBgYGAKPiA+Cj4gPiBBdHRhY2ggdGhlIFFQSFkgaW5zdGFuY2UgYXMgZHJpdmVy
IGRhdGEgYmVmb3JlIGVuYWJsaW5nIHJ1bnRpbWUgUE0gdG8KPiA+IHByZXZlbnQgTlVMTCBwb2lu
dGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzLgo+ID4KPiA+IFJlb3JkZXIg
cG1fcnVudGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSB0byBwcmV2ZW50IGEK
PiA+IHNob3J0IHdpbmRvdyB3aGVyZSBhbiB1bm5lY2Vzc2FyeSBydW50aW1lIHN1c3BlbmQgY2Fu
IG9jY3VyLgo+ID4KPiA+IFVzZSB0aGUgZGV2cmVzLW1hbmFnZWQgdmVyc2lvbiB0byBlbnN1cmUg
UE0gcnVudGltZSBpcyBzeW1tZXRyaWNhbGx5Cj4gPiBkaXNhYmxlZCBkdXJpbmcgZHJpdmVyIHJl
bW92YWwgZm9yIHByb3BlciBjbGVhbnVwLgo+ID4KPiA+IEZpeGVzOiA4OTFhOTZmNjVhYzMgKCJw
aHk6IHFjb20tcXVzYjI6IEFkZCBzdXBwb3J0IGZvciBydW50aW1lIFBNIikKPiA+IFNpZ25lZC1v
ZmYtYnk6IExvaWMgUG91bGFpbiA8bG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20+Cj4gPiBS
ZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNv
bW0uY29tPgo+ID4gLS0tCj4gPiAgdjM6IFRoZSBwaHktY29yZSBleHBlY3RzIHBhcmVudCdzIHJ1
bnRpbWUtcG0gdG8gYmUgc2V0dXAgYmVmb3JlIGNyZWF0aW5nCj4gPiAgICAgIHRoZSBwaHksIHNv
IG1vdmUgYmFjayBydW50aW1lLXBtIHRvIGl0cyBpbml0aWFsIGxvY2F0aW9uIGFuZAo+ID4gICAg
ICByZWxvY2F0ZSBkZXZfc2V0X2RydmRhdGEoKSBpbnN0ZWFkLgo+ID4KPiA+ICB2MjogTW92ZSBy
dW50aW1lLXBtIGVuYWJsaW5nIGFmdGVyIGRldl9zZXRfZHJ2ZGF0YQo+ID4gICAgICB1c2UgZGV2
bV9wbV9ydW50aW1lX2VuYWJsZSgpIHRvIGZpeCB1bmJhbGFuY2VkIGVuYWJsaW5nIG9uIHJlbW92
YWwKPiA+ICAgICAgcmV3b3JkIGNvbW1pdCBtZXNzYWdlCj4gPgo+ID4gIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCAxNCArKysrKystLS0tLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiBpbmRleCBiNTUxNGEzMmZmOGYuLjYzODZkODM0
YjBlNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2Iy
LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+IEBA
IC0xMDkzLDI5ICsxMDkzLDI3IEBAIHN0YXRpYyBpbnQgcXVzYjJfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgICAgICAgIG9yLT5oc2Rpc2NfdHJpbS5v
dmVycmlkZSA9IHRydWU7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgcG1fcnVudGltZV9zZXRf
YWN0aXZlKGRldik7Cj4gPiAtICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gKyAgICAg
ZGV2X3NldF9kcnZkYXRhKGRldiwgcXBoeSk7Cj4gPiArCj4gPiAgICAgICAvKgo+ID4gLSAgICAg
ICogUHJldmVudCBydW50aW1lIHBtIGZyb20gYmVpbmcgT04gYnkgZGVmYXVsdC4gVXNlcnMgY2Fu
IGVuYWJsZQo+ID4gLSAgICAgICogaXQgdXNpbmcgcG93ZXIvY29udHJvbCBpbiBzeXNmcy4KPiA+
ICsgICAgICAqIEVuYWJsZSBydW50aW1lIFBNIHN1cHBvcnQsIGJ1dCBmb3JiaWQgaXQgYnkgZGVm
YXVsdC4KPiA+ICsgICAgICAqIFVzZXJzIGNhbiBhbGxvdyBpdCBhZ2FpbiB2aWEgdGhlIHBvd2Vy
L2NvbnRyb2wgYXR0cmlidXRlIGluIHN5c2ZzLgo+ID4gICAgICAgICovCj4gPiArICAgICBwbV9y
dW50aW1lX3NldF9hY3RpdmUoZGV2KTsKPiA+ICAgICAgIHBtX3J1bnRpbWVfZm9yYmlkKGRldik7
Cj4KPiBJIHRoaW5rLCB0aGlzIHNob3VsZCBiZSBjYWxsZWQgYWZ0ZXIgZW5hYmxpbmcgcnVudGlt
ZSBQTS4gUGxlYXNlIGNvcnJlY3QKPiBtZSBpZiBJJ20gd3JvbmcuCgplbmFibGUvZGlzYWJsZSBh
bmQgZm9yYmlkL2FsbG93IGFwcGVhciB0byBiZSBvcnRob2dvbmFsLCB0aGUgcHVycG9zZQpvZiBp
bnZlcnRpbmcgdGhlbSBoZXJlIGlzIHRvIHByZXZlbnQgYW4gdW5uZWNlc3Nhcnkgc3VzcGVuZC9y
ZXN1bWUKY3ljbGUgZnJvbSBvY2N1cnJpbmcgYmV0d2VlbiBlbmFibGUgYW5kIGZvcmJpZC4gQWxz
bywgdGhpcyBzZXF1ZW5jZQpoYXMgYmVlbiB0ZXN0ZWQgYW5kIHdvcmtzIGNvcnJlY3RseS4KCj4K
PiA+ICsgICAgIGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPgo+IE1pc3NpbmcgZXJyb3Ig
aGFuZGxpbmcKCkkgd2FzbuKAmXQgY2VydGFpbiB3aGV0aGVyIHdlIHNob3VsZCBhYm9ydCBvbiB0
aGlzIG5vbi1mYXRhbCBlcnJvciwKc2luY2UgdGhlIGRyaXZlciBjYW4gb3BlcmF0ZSB3aXRob3V0
IFBNLXJ1bnRpbWUgZW5hYmxlZC4gSG93ZXZlciwgaWYKdGhpcyBlcnJvciBvY2N1cnMsIGl0IGxp
a2VseSBpbmRpY2F0ZXMgYSBtb3JlIHNpZ25pZmljYW50IHVuZGVybHlpbmcKbWVtb3J5IGlzc3Vl
LgoKCj4KPiA+Cj4gPiAgICAgICBnZW5lcmljX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5V
TEwsICZxdXNiMl9waHlfZ2VuX29wcyk7Cj4gPiAgICAgICBpZiAoSVNfRVJSKGdlbmVyaWNfcGh5
KSkgewo+ID4gICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGdlbmVyaWNfcGh5KTsKPiA+ICAg
ICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIHBoeSwgJWRcbiIsIHJl
dCk7Cj4gPiAtICAgICAgICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ID4gICAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ID4gICAgICAgfQo+ID4gICAgICAgcXBoeS0+cGh5ID0gZ2Vu
ZXJpY19waHk7Cj4gPgo+ID4gLSAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgcXBoeSk7Cj4gPiAg
ICAgICBwaHlfc2V0X2RydmRhdGEoZ2VuZXJpY19waHksIHFwaHkpOwo+ID4KPiA+ICAgICAgIHBo
eV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3Np
bXBsZV94bGF0ZSk7Cj4gPiAtICAgICBpZiAoSVNfRVJSKHBoeV9wcm92aWRlcikpCj4gPiAtICAg
ICAgICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ID4KPiA+ICAgICAgIHJldHVybiBQ
VFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVyKTsKPiA+ICB9Cj4gPiAtLQo+ID4gMi4zNC4xCj4g
Pgo+Cj4gLS0KPiBXaXRoIGJlc3Qgd2lzaGVzCj4gRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
