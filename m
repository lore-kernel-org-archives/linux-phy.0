Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED96D2ED0E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 03:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FfKT4laySKbQVKWtucSnZ3ljQoOZnqdzJjVI0a8peE=; b=2aux8fBUC0UbJf
	+otWOStlf79SdZGdDDwO040NdzL3FSTkESp/KQBonFUER32c7kPACOuml8sVy0esY4Gj1e8HCYo2E
	wWZlP+0DT3y5Zx92WJs3yioIYVcK1Qcf9usctmesRCV5JmPAF9mKDY3r7f4aUF1m5gQHRLP51QEm7
	Ospr7WmsFFOLlUiajn8XE9SYep1p5smpTgoqwSbatBYRrDjojOcj1Q154+TfDWCmVPActsEPllVOe
	lCJVn36k2ToQBfRLQ47PLMdKDM0/+h+dCTJLblK6WwjkHOnR1C/Thk3iPywPYw5VJtXCIrBuQHdYZ
	D/F6QaYpnZXO1MEvzMPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi2Al-0000000379Y-1Dyy;
	Tue, 20 Jan 2026 03:12:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi2Aj-0000000379C-1rxl
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 03:12:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K18CxT3366145
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 03:12:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dN6GrBjm9j5/FKfXJYdfLqyzUS7aQVthNgblFux+x3c=; b=c0/kiv4jXP4i9kD8
	u3m1KHN1KVFyQJV8+vuAQ+GeueFvEBfVcSN2cF/iTDMOGBZ+rQjjtPeP5v90gC7Y
	gpfLTI7gkr0mkZmLxboVFI7P6Lyhuf2qVO9UgCQiT5gC+nDF1HwO5OCRu+5VbVyJ
	CmDWn1DObZDvuvv426G0ZOuR/c/rbm4+gGDqEFzYyhf07v02r5jN0zENom9q3B2F
	NKeDyvRoYMZHSw+0kMwABAUzUAlnUR82BqcSXOD+oq2eQJ7mUWC3VN4nmWSpRf+9
	oymdFzhvDZCkEuniHlqCR6a0r0hfx/J9xXKJdzD1iqoQAFZrckCq+ouJdmiEau2w
	2JM61w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsysb094d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 03:12:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bc4493d315so1342104285a.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 19:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768878768; x=1769483568; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dN6GrBjm9j5/FKfXJYdfLqyzUS7aQVthNgblFux+x3c=;
        b=UNojGgIdO4CQJc5pt3uM+tMgO7KKYyHgiylGV91xquGPB/m0zBoDrhqSTVrmFnDXwm
         EAAoPN7wxVCWRp2IE6wSYL+whes/IO0vJVJKOrN1GkB0UG2h/Il1nluPa6jrh7IN8VwN
         8OAjHGZ0E56I4f4Di1nx6gl/55HlCuoeE4HSLBav0VUky8R7rp6CKA5OvEElSlpgrz9S
         Y7xL523DmWRi71GK6iyA2Hw42cJb+DMacn8B3+HPCQ+sUe7U2fAfKV2g9qp7DxbJJG7x
         D2IyqTs6KV/nd12xOwosmacpUgPk0E40l4qrV6P0ewknmPLGmgg++ANnBsO8AZ4AornW
         D8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768878768; x=1769483568;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dN6GrBjm9j5/FKfXJYdfLqyzUS7aQVthNgblFux+x3c=;
        b=jXiKFVKrzkdB+9XQMFs6IzxJeThYikz16F8Q9BmQoPpRnGsWLcvYXDFH2GgTpwYrDB
         Qhi424x8AdwDOyCFkEAD5n0na1xX6BxFoPbbN3HlCrDb3JBp/ofxpoElPMtI1aTkdzbk
         W/McVCfjxFsnIsi3jEqu2WiAp7xHGNCXz2REmOQqaGqPTTc6K164ydvg77hyWUeZER4b
         cUxGMJFVPM9WjKUrqIamvzktpmwbsO1tqBemo+uSaMkbi2mQ1dYR9BsFkkHNMswXHVY5
         loZqjErNlRL9HGmvQGcYjmiSYs0uTYEclbwyFzanc3C5bznoHFXq8ixV7S6x2T3LCb6U
         cVfA==
X-Forwarded-Encrypted: i=1; AJvYcCUi72N5TQtJ1OMSXOUY36aEP5wHK1LIJi0ib7MMWwgVr83/+FgOU2XschPlfG3Z3Zfnr9ELRYX9fBU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywydfk6bSTTyT8/NVZPaj6A6ZAiBsJPHNrJ+4VvvkBXcuhDo+7U
	h4aiP2+ikNvBLYTky5zv2nI+meepX+Cinm77JcTes13YVBOPKThpzhL0hIt8D2kUeuhZaXHEYIC
	wt5w9WNW3GM0PxU0l/zZAi6RNovoQ8LP+7G6gsAg3KWAAD3Ivah2l2klGTmBfRB2UGqcU
X-Gm-Gg: AY/fxX5VffSJFuhTHfVuyCY8932aUpQpMwTcy7JaHZoyS216EhcXKgEcmy6mFUiBv97
	lpAk4RSfZdaTpUC5WQOYNAGrQCxrMSV8fG91SZ77yLTsrvBhg50hOr/8IiqcE2VeMD6nCkN9VYQ
	JMYfMSo0mt8CqTv8ZSHp8y096iGZ/LR/sCTrhsS6HTYQ0RZ7zJdqBHO5Pr0W8feQNaKezgbu1L6
	wlHnnmZkbhR3qKTGjhwGAYX79mtvOYzxRCXtc9RRMmuY3VwDD/kOWj0tNjFvEp4Puapncfx9TSM
	Dp3rd+c8F5bxuuEcfVOUsl8q7pHdBxEpnqUokKc7Q3ETdZBbnq5FWUNuMAFllHKsnFksTski3I3
	EOHxams3H1weWFeRPlghv7pWRhTOpAqyP0XzZsOxzIet0UvFqNqgfm5pCoM1HcButHD9h3iwWI6
	95DhQPbszQKTMFQDGfM39gKU4=
X-Received: by 2002:a05:620a:280b:b0:8a4:6ac1:aeb with SMTP id af79cd13be357-8c6a69499a1mr1727921385a.74.1768878767794;
        Mon, 19 Jan 2026 19:12:47 -0800 (PST)
X-Received: by 2002:a05:620a:280b:b0:8a4:6ac1:aeb with SMTP id af79cd13be357-8c6a69499a1mr1727920085a.74.1768878767336;
        Mon, 19 Jan 2026 19:12:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c453sm3825512e87.76.2026.01.19.19.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 19:12:45 -0800 (PST)
Date: Tue, 20 Jan 2026 05:12:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy
 Swing/Emphasis setting
Message-ID: <5ytgf7saw6yfvqzqmy4gtjygo4cx52vomi7mwswc7hgedzz3rb@eiqxiqs2cjmb>
References: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
 <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
 <749e716e-a6cb-4adb-8ffc-0d6f4c6d56c4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <749e716e-a6cb-4adb-8ffc-0d6f4c6d56c4@oss.qualcomm.com>
X-Proofpoint-GUID: ULfHUPmjh91v9EOs35nNp1YSxP76IJq_
X-Authority-Analysis: v=2.4 cv=XJ89iAhE c=1 sm=1 tr=0 ts=696ef2b0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=fMMN0vGI0iEnj70k6hcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: ULfHUPmjh91v9EOs35nNp1YSxP76IJq_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDAyNCBTYWx0ZWRfXwYbee/iJqKkm
 N9vYY0lOoB6NTSj2XdQRrdFGhiV2hvqyZ5nRUyJdKoJMdyM+7F35S513efarfQZhkD+w3MvEAxv
 flZw0RIcpIXDRlofBlBznmCu2QYsUv3FTJOC/sBalvGb866GeFX+B9WtVOp7IKvIV1vlw3ciH6Y
 HaZO5n+2vGDlEXq1ztWy9YQpjHbEPkn/ZD++7tEn3RDbLSsjUjpO1VsWqalz0vcCenjdO2eSsG7
 ww2C/k+kjXq6Z3QxzLwuqSXkFN7I/QjO0J6p+F7id+5MPUklwuFmb3s7JF2AjBD0LFNG8RodRO8
 4gnXEh+eY8oumYA+FH74E3pfna+zwDmechF46vSn05a+7gVLWLGXMZxJPxBi5uiAcTuEZoNFNUI
 hsXAPBV4oynDor/CnIBzof/bV2/kvcTuWJwcemXiJqmXWyiRAvJzXKkseH+XR6vILCv1CmRE8Va
 QV6UhEtZ57Hl8Po/iCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_191249_500886_BEF04919 
X-CRM114-Status: GOOD (  26.49  )
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

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMTA6NDM6NDZBTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDEvMTkvMjAyNiA4OjU1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMDg6Mzc6MjBQTSArMDgwMCwgWW9uZ3hpbmcg
TW91IHdyb3RlOgo+ID4gPiBDdXJyZW50bHksIHRoZSBMZU1hbnMvTW9uYWNvIGRldmljZXMgYW5k
IHRoZWlyIGRlcml2YXRpdmUgcGxhdGZvcm1zCj4gPiA+IG9wZXJhdGUgaW4gRFAgbW9kZSByYXRo
ZXIgdGhhbiBlRFAgbW9kZS4gUGVyIHRoZSBQSFkgSFBHLCB0aGUgU3dpbmcgYW5kCj4gPiA+IEVt
cGhhc2lzIHNldHRpbmdzIG5lZWQgdG8gYmUgY29ycmVjdGVkIHRvIHRoZSBwcm9wZXIgdmFsdWVz
Lgo+ID4gCj4gPiBObywgdGhleSBuZWVkIHRvIGJlIGNvbmZpZ3VyZWQgZHluYW1pY2FsbHkuIEkg
d3JvdGUgZWFybGllciB0aGF0IHRoZQo+ID4gZHJpdmVyIG5lZWRzIHJlZmFjdG9yaW5nLgo+ID4g
Cj4gSGksIERtaXRyeS4gSSBwbGFuIHRvIHN1Ym1pdCB0aGVtIGluIHRoaXMgb3JkZXI6IHRoaXMg
cGF0Y2gg4oaSIExETyBwYXRjaCDihpIKPiByZWZhY3Rvci4KPiBTaW5jZSB0aGUgcmVmYWN0b3Ig
aW52b2x2ZXMgbW9yZSBwbGF0Zm9ybXMgYW5kIG1heSB0YWtlIHNvbWUgdGltZSwgSeKAmWQgbGlr
ZQo+IHRvIGdldCB0aGlzIHBhdGNoIG1lcmdlZCBmaXJzdC4KClRoaXMgcGF0Y2ggaXMgaW5jb3Jy
ZWN0LiBJdCB0cmFkZXMgd29ya2luZyBvbiBzb21lIHBsYXRmb3JtcyAoRFApIHZzCndvcmtpbmcg
b2Ygc29tZW8gdGhlciBwbGF0Zm9ybXMgKGVEUCkuIEkgZG9uJ3QgdGhpbmsgaXQgaXMgYSBwcm9w
ZXIgZml4CmZvciBhbnkgcHJvYmxlbS4KCj4gPiA+IAo+ID4gPiBUaGlzIHdpbGwgaGVscCBhY2hp
ZXZlIHN1Y2Nlc3NmdWwgbGluayB0cmFpbmluZyBvbiBzb21lIGRvbmdsZXMuCj4gPiA+IAo+ID4g
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gPiBGaXhlczogM2YxMmJmMTYyMTNjICgi
cGh5OiBxY29tOiBlZHA6IEFkZCBzdXBwb3J0IGZvciBlRFAgUEhZIG9uIFNBODc3NVAiKQo+ID4g
PiBSZXZpZXdlZC1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAb3NzLnF1YWxjb21tLmNvbT4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21t
LmNvbT4KPiA+ID4gLS0tCj4gPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+IC0gU2VwYXJhdGUgdGhl
IExETyBjaGFuZ2Ugb3V0LltLb25yYWRdW0RtaXRyeV0KPiA+ID4gLSBNb2RpZnkgdGhlIGNvbW1p
dCBtZXNzYWdlLltEbWl0cnldCj4gPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDI2MDEwOS1rbG1fZHBwaHktdjEtMS1hNmI2YWJlMzgyZGVAb3NzLnF1YWxjb21t
LmNvbQo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAu
YyB8IDIzICsrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiAKPiAKPiAKPiAtLSAKPiBs
aW51eC1waHkgbWFpbGluZyBsaXN0Cj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkKCi0t
IApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
