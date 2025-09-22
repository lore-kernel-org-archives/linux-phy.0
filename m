Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 195F1CA100F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 15:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbWdFk61HD7EWTIv7C9Ic0XxWoSiiSKa+idTDK+VMZY=; b=b12utPnInGXg+O
	V5Ut7+ujrZoOBXcr5gwatua06kMRvANk5Y92He/SwPWQ3Uw074vnnqZD94k7mnppFptr3aVT8CDj9
	j2/FucLpeuhfaJ9y5lkvwLPBrT+uRVPlp/qlM20MZg9ryWhiepjqKtM+HLDSKcJlUf8Jg2fmRbl24
	8FPNqHnQC3XOhnUxTmXDfPOuIol0hc2hNpHf0ZhJIYrh+hQYuYO8/fHPQX3jU2e5+cU9tMhqCtjA8
	30X6EudiKZDFy309l88D+eL6eJfUo8z/c6vGEPIUROiElkemeyWSLKNxJozP7UuArGwBr1cS3xgkD
	AX8Qf11LLbsVRvep4vZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iE9-0000000Am1S-2thg;
	Mon, 22 Sep 2025 15:13:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iE7-0000000Alzt-170s
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 15:13:16 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M9G3kK022695
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 15:13:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=6L9xQwPvNyqamZukUXThzBL99kp13JUWCh+pkhXMJs8=; b=Ch
	1JZDV+r8a/WgnKlOpaq43F9UXMaE7QwFKQFTc49dqHxNTCmTe3l+dGBTQN5/TPmM
	x39TiYYB18ZZuaM9vNEeWb+M4uOXoYafbF7ZwTD7q/BE14Sa6+odQIFtpSeUm101
	3x+01mzW4QBpFYlbrWORWQakdsbwSJ6C8MLXe1PfNGvdmD5BC/CS/HvHJOXlcXXN
	1rqTpD/saU4PxETzDxSYubavNCNOwKaJ1cMvEytGRhI6JAs8JszfAQgdtIakwr+7
	AC69IdlsFgwwKw91ZpvC++2o22NFJVAh75nm0JaLE4hWAbGUVeyjIWi9ua6WxXtU
	2cZJ8TH7K/nR9ngV2g3A==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3ny8yxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 15:13:12 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-77f5c71c624so1322107a34.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 08:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758553991; x=1759158791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6L9xQwPvNyqamZukUXThzBL99kp13JUWCh+pkhXMJs8=;
        b=FWzsHXxxq/oXEwuI1brYlvYcjzrZqJFTJm74BsZjehMwHrb5wvolSvtmTNxh7GSWck
         M+z/TETAExyUbnlVS3pppbu9OJ6tOYCVbg8ouATT6v8KDaZyqrrplmD6CIeZOZPARAD3
         L4c9PrFUGlQBGDdgo/zbbj1beRiVrGADAYpHaRsBOdv/mWZdUewURLBuTZ3HYNcOtzq1
         Z8MtZRVBJndt4+as1Em5pgVrKi6YQHCSYDJkBeb9+aa5kq0W5Jhw04Q5PXWaEirEOGuu
         uOHgq2ciu9VpEAsRKCeosSPa+O+FR1AASV/2lxLu+r3aY+TmkCqW9YGnGlgU0X1DvXx/
         isfg==
X-Forwarded-Encrypted: i=1; AJvYcCUYLCowqxOzVNuunXZRoyCZaiCVgekzAe3n6EEJMLKHkeFNqEj/S1yBIE8rYBZzDlfbdZTiGil1Pxk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbLFxDbcF8jsYX46LlKFJR2gStTxQBeBDc69zelpX72DmsaJou
	NxPlG2EzCHD0OUIBwnwJ9cnilJSR5uMZNU+PzdTSd9QJX2738hCKdCHPRVU1lrEMxYVubSFm3Kh
	sco+3bLB/gLixZ25Y4wlwHZ1NBU+oCfboTAoJLp2q98If4x8oBMaLAaVCU6cK25xSVfc0beFiUL
	617heQRuOWTNu5W4KqwNxM4PVuDgIw19vFRcBY6F2FWF8=
X-Gm-Gg: ASbGncu0AJNjgPEocdrgdhkSX7ou9TeW+HM9gf+UXtsFT92TB9L8pCSAM/zz3a6aulf
	MBYeloxEfRihPUkhLADdH1RR2d3iF3cNyBJ9pXKU9+OxbMi6T/jaklFn1ny9IJNirW4nhRtl/cD
	HxfiymRTVNrupBVyD1hgZG4NdHKMHPB6sB+0Ey2WpcWxA7Vk5/N45g
X-Received: by 2002:a05:6870:d203:b0:321:27af:4b0 with SMTP id 586e51a60fabf-33bb387a8efmr7066545fac.21.1758553991296;
        Mon, 22 Sep 2025 08:13:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeI3VUzLWw/6kf7cmjW8nkegRTNOSrOJHdfgWLSr9Z07F+QepvdikPR1+KMJ0NepSDMgedO2i6ynxIGcy1040=
X-Received: by 2002:a05:6870:d203:b0:321:27af:4b0 with SMTP id
 586e51a60fabf-33bb387a8efmr7066517fac.21.1758553990880; Mon, 22 Sep 2025
 08:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
 <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
In-Reply-To: <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 08:13:00 -0700
X-Gm-Features: AS18NWDsjwQT4-UMvgr22Kwg3NRpxj1iGVDde1kRYPcz2iKyW9TnGKIpG41ve0w
Message-ID: <CACSVV00Bat6LE=joM+Wh3HnC1=c3_Y=crxUGdhLQWxxpZ17Q3g@mail.gmail.com>
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d16788 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=Ck2O2MNpSjHhtJkipUsA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-GUID: 6dP7BGCSn7ihWm_Qt3zM6vzJ_ozo5KYi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX88xFkyjZ6m0K
 VTLKpYSQ5+fRYOHllmaPV1bV4NCh8No3+JEitIv52fv/hD7l537KhVL8FUl4hhslI1Vikq0M6hN
 bUyTNWLEjhf+MN6jMN6Wm1bo02uiKL4j9xAUdw/uYCPS43oIdpf6I1fRpsuKcwz2mpeJFirCMYj
 MbL8XecF5w7y2vMpa7mTFAjLr8WRrklsbWynayNxXEe1KYDtGvufEvRlktEPwI2oa1rNR1UR6Lm
 IgjP9DMfbmFlS7eiO4wu2iPXviMx7EI3m9Nhx/JqvJ6GPJW35UQ/1wIOUuBcf/r5dwLkuGx/mRe
 M/nJVNbfnK62QJozacTgXPnmX9FGNwhB2iR5g+Mku8IyE/IW/UFQx/AzMyAUCyJy5Dmyh5OaRKU
 pv8XQe1t
X-Proofpoint-ORIG-GUID: 6dP7BGCSn7ihWm_Qt3zM6vzJ_ozo5KYi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1011 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_081315_401402_4BDD83F5 
X-CRM114-Status: GOOD (  26.47  )
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

T24gRnJpLCBTZXAgMTksIDIwMjUgYXQgMTE6MzXigK9BTSBEbWl0cnkgQmFyeXNoa292CjxkbWl0
cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBTZXAgMTks
IDIwMjUgYXQgMTA6MjQ6MzFQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gPiBRQ1M2MTUg
cGxhdGZvcm0gcmVxdWlyZXMgbm9uLWRlZmF1bHQgbG9naWNhbC10by1waHlzaWNhbCBsYW5lIG1h
cHBpbmcgZHVlCj4gPiB0byBpdHMgdW5pcXVlIGhhcmR3YXJlIHJvdXRpbmcuIFVubGlrZSB0aGUg
c3RhbmRhcmQgbWFwcGluZyBzZXF1ZW5jZQo+ID4gPDAgMSAyIDM+LCBRQ1M2MTUgdXNlcyA8MyAy
IDAgMT4sIHdoaWNoIG5lY2Vzc2l0YXRlcyBleHBsaWNpdAo+ID4gY29uZmlndXJhdGlvbiB2aWEg
dGhlIGRhdGEtbGFuZXMgcHJvcGVydHkgaW4gdGhlIGRldmljZSB0cmVlLiBUaGlzIGVuc3VyZXMK
PiA+IGNvcnJlY3Qgc2lnbmFsIHJvdXRpbmcgYmV0d2VlbiB0aGUgRFAgY29udHJvbGxlciBhbmQg
UEhZLgo+ID4KPiA+IEZvciBwYXJ0aWFsIGRlZmluaXRpb25zLCBmaWxsIHJlbWFpbmluZyBsYW5l
cyB3aXRoIHVudXNlZCBwaHlzaWNhbCBsYW5lcwo+ID4gaW4gYXNjZW5kaW5nIG9yZGVyLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0u
Y29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgfCAxMCAr
KystLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5rLmMgfCA2MCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9saW5rLmggfCAgMSArCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2NiBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bXNtL2RwL2RwX2xpbmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5jCj4gPiBp
bmRleCAyYWViM2VjZjc2ZmFiMmVlNmE5NTEyYjc4NWNhNWRjZWViZmMzOTY0Li4zNGE5MWUxOTRh
MTI0ZWY1MzcyZjEzMzUyZjdiMzUxM2FhODhkYTJhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9saW5rLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAv
ZHBfbGluay5jCj4gPiBAQCAtMTIzNiw2ICsxMjM2LDYxIEBAIHN0YXRpYyB1MzIgbXNtX2RwX2xp
bmtfbGlua19mcmVxdWVuY2llcyhzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUpCj4gPiAgICAg
ICByZXR1cm4gZnJlcXVlbmN5Owo+ID4gIH0KPiA+Cj4gPiArLyoKPiA+ICsgKiBBbHdheXMgcG9w
dWxhdGUgbXNtX2RwX2xpbmstPmxhbmVfbWFwIHdpdGggNCBsYW5lcy4KPiA+ICsgKiAtIFVzZSBE
VFMgImRhdGEtbGFuZXMiIGlmIHByZXNlbnQ7IG90aGVyd2lzZSBmYWxsIGJhY2sgdG8gZGVmYXVs
dCBtYXBwaW5nLgo+ID4gKyAqIC0gRm9yIHBhcnRpYWwgZGVmaW5pdGlvbnMsIGZpbGwgcmVtYWlu
aW5nIGVudHJpZXMgd2l0aCB1bnVzZWQgbGFuZXMgaW4KPiA+ICsgKiAgIGFzY2VuZGluZyBvcmRl
ci4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgaW50IG1zbV9kcF9saW5rX2xhbmVfbWFwKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IG1zbV9kcF9saW5rICptc21fZHBfbGluaykKPiA+ICt7Cj4gPiAr
ICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUgPSBkZXYtPm9mX25vZGU7Cj4gPiArICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKmVuZHBvaW50Owo+ID4gKyAgICAgaW50IGNudCA9IG1zbV9k
cF9saW5rLT5tYXhfZHBfbGFuZXM7Cj4gPiArICAgICB1MzIgdG1wW0RQX01BWF9OVU1fRFBfTEFO
RVNdOwo+ID4gKyAgICAgdTMyIG1hcFtEUF9NQVhfTlVNX0RQX0xBTkVTXSA9IHswLCAxLCAyLCAz
fTsgLyogZGVmYXVsdCAxOjEgbWFwcGluZyAqLwo+ID4gKyAgICAgYm9vbCB1c2VkW0RQX01BWF9O
VU1fRFBfTEFORVNdID0ge2ZhbHNlfTsKPiA+ICsgICAgIGludCBpLCBqID0gMCwgcmV0ID0gLUVJ
TlZBTDsKPiA+ICsKPiA+ICsgICAgIGVuZHBvaW50ID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5
X3JlZ3Mob2Zfbm9kZSwgMSwgLTEpOwo+ID4gKyAgICAgaWYgKGVuZHBvaW50KSB7Cj4gPiArICAg
ICAgICAgICAgIHJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KGVuZHBvaW50LCAiZGF0
YS1sYW5lcyIsIHRtcCwgY250KTsKPiA+ICsgICAgICAgICAgICAgaWYgKHJldCkKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBkZXZfZGJnKGRldiwgImVuZHBvaW50IGRhdGEtbGFuZXMgcmVhZCBm
YWlsZWQgKHJldD0lZClcbiIsIHJldCk7Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICBpZiAo
cmV0KSB7Cj4gPiArICAgICAgICAgICAgIHJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5
KG9mX25vZGUsICJkYXRhLWxhbmVzIiwgdG1wLCBjbnQpOwo+ID4gKyAgICAgICAgICAgICBpZiAo
cmV0KSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2luZm8oZGV2LCAiZGF0YS1sYW5l
cyBub3QgZGVmaW5lZCwgc2V0IHRvIGRlZmF1bHRcbiIpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gb3V0Owo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICB9Cj4gPiArCj4gPiAr
ICAgICBmb3IgKGkgPSAwOyBpIDwgY250OyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgaWYgKHRt
cFtpXSA+PSBEUF9NQVhfTlVNX0RQX0xBTkVTKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ZGV2X2VycihkZXYsICJkYXRhLWxhbmVzWyVkXT0ldSBvdXQgb2YgcmFuZ2VcbiIsIGksIHRtcFtp
XSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArICAgICAg
ICAgICAgIH0KPiA+ICsgICAgICAgICAgICAgdXNlZFt0bXBbaV1dID0gdHJ1ZTsKPiA+ICsgICAg
ICAgICAgICAgbWFwW2ldID0gdG1wW2ldOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgLyog
RmlsbCB0aGUgcmVtYWluaW5nIGVudHJpZXMgd2l0aCB1bnVzZWQgcGh5c2ljYWwgbGFuZXMgKGFz
Y2VuZGluZykgKi8KPiA+ICsgICAgIGZvciAoaSA9IGNudDsgaSA8IERQX01BWF9OVU1fRFBfTEFO
RVMgJiYgaiA8IERQX01BWF9OVU1fRFBfTEFORVM7IGorKykgewo+Cj4gTml0OiBpID0gY250LCBq
ID0gMDsgRG9uJ3QgaW5pdCBsb29wIHZhcmlhYmxlcyBhdCB0aGUgdG9wIG9mIHRoZQo+IGZ1bmN0
aW9uLgoKVGhlc2UgZGF5cyB3ZSBjYW4gcGFydHkgbGlrZSBpdCdzIGM5OSBhbmQgZGVjbGFyZSBs
b29wIHZhcmlhYmxlcwppbnNpZGUgdGhlIGZvcigpLCBpbnN0ZWFkIG9mIGF0IHRoZSB0b3Agb2Yg
dGhlIGZ1bmN0aW9uLiAgTXkKcHJlZmVyZW5jZSBpcyB0byBkbyBzbywgdW5sZXNzIHRoZSBsb29w
IHZhcmlhYmxlIGlzIHVzZWQgYWZ0ZXIgdGhlCmxvb3AuCgpCUiwKLVIKCj4gT3RoZXIgdGhhbiB0
aGF0Ogo+Cj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZA
b3NzLnF1YWxjb21tLmNvbT4KPgo+Cj4gPiArICAgICAgICAgICAgIGlmICghdXNlZFtqXSkKPiA+
ICsgICAgICAgICAgICAgICAgICAgICBtYXBbaSsrXSA9IGo7Cj4gPiArICAgICB9Cj4gPiArCj4g
PiArb3V0Ogo+ID4gKyAgICAgaWYgKGVuZHBvaW50KQo+ID4gKyAgICAgICAgICAgICBvZl9ub2Rl
X3B1dChlbmRwb2ludCk7Cj4gPiArCj4gPiArICAgICBkZXZfZGJnKGRldiwgImRhdGEtbGFuZXMg
Y291bnQgJWQgPCVkICVkICVkICVkPlxuIiwgY250LCBtYXBbMF0sIG1hcFsxXSwgbWFwWzJdLCBt
YXBbM10pOwo+ID4gKyAgICAgbWVtY3B5KG1zbV9kcF9saW5rLT5sYW5lX21hcCwgbWFwLCBzaXpl
b2YobWFwKSk7Cj4gPiArICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGlu
dCBtc21fZHBfbGlua19wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBtc21fZHBf
bGluayAqbXNtX2RwX2xpbmspCj4gPiAgewo+ID4gICAgICAgc3RydWN0IGRldmljZV9ub2RlICpv
Zl9ub2RlID0gZGV2LT5vZl9ub2RlOwo+Cj4gLS0KPiBXaXRoIGJlc3Qgd2lzaGVzCj4gRG1pdHJ5
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
