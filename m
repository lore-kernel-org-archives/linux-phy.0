Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6EF5CAC5A7
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4IB4jFcfZaFFrcNsAqIG+s53VHKQTRVlah4eJ1q50M=; b=n/AOFgzNuWns/a
	NCNhUej0PYvoV1DzUl3GJnpKuPyDXUsldq9z4XkyD7bnp/6ik2CCYtpNmr/TFH+NHa4eVJ+R/jDh/
	vel3I+LP18ehsw4jWv2HMyps2yD9ww+FqI32U12GGuKOJjzF9HY7/88RlMnoCttgiGsEr5lV+Sge5
	U52dn1aCVDoyHAuUWPeHOlbg9NXh8waLCVARefKSIANMfvTVGggkCeA2O0YkKZgrg9dV8GkFj/a9B
	8zs8ttlu18cRscGdluliS8RqfEfcuAFFWHcQ5SfrRVjmHu0MZisuCTO30AqhemkJp8u7yv8WLfywb
	kbOxRT0N2xlFEx4C3agA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tri-0000000CFhV-2gDX;
	Tue, 23 Sep 2025 03:38:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0trg-0000000CFhB-1xLp
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:38:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N1RB8w002396
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:38:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Y+UxxpE5WuCRJKuL0hvK4qAyKZPxGwcP6Rwn7/3joE=; b=KFz4IHVWkCAuM+Gr
	ihh3zMOk3sz7yyPuq6meqSBY7YiXu9sJ3Ovl8LYI61cfbz09oYecTiJe/lyjqVDG
	KEzyoIpj/5TgH/SsGYfYwYD7zQIQWJC8qOPQoNYsrjJDPIbpNkVOn+KXq+DXYAW9
	y3CO1VYETWVuyFcDyAqLjhdHY8TbVuZA5F1G/ClJBVyqz+l+v+BDQsPZrEWehj5+
	uR0MMK0F2cfTQzQmaoioJKQmVrq1s1+8cZkEF1f9ICprkjT3PLKdm4e1oybwON9c
	S/MYHMgSWrU1SY9zq+nOOo9Q9q30ORUfz8qlA7MwxCFU4ipWeBlzFBjJtnLrKzqp
	Zl/9Bw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjr9ua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:38:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26970768df5so12025705ad.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758598730; x=1759203530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Y+UxxpE5WuCRJKuL0hvK4qAyKZPxGwcP6Rwn7/3joE=;
        b=FfZxesSbUHP+HcBlFbU6JFi+CBxNMHejS6WXF+09K9kcdJex/ptWagfcB71ipiCz5l
         KQjSdthv3ls2geuZ4YuSXyfdzUIHdujJqfpchoqJQne3X6h5lV5rlGlUhq2DS8b0oOtH
         darlKuD73ST2uh3qXZtLC/TSbpLOLngw6oSsfTLh5z2QH9eXX6F8AYtGpkbXQ+3HDgAM
         5mCtsuf9ro6QeQZAbE+wy7i/XsMuR+Pi/oy2y8kGJMuvW6dDaVPp962FVNBI0Zs/XPor
         PGQIP7EH259Dohdu8u2LrFRqxLEBDtYsgqLJ7YFv0qWN3H0qbTGTO54gBoxmSyQmZuqr
         hmTg==
X-Forwarded-Encrypted: i=1; AJvYcCVYQlHpp6zNtyhBzP9Bu5mIX96MzANLVVAmHElJiELLGbtyXJbOlH8e2yKETMg6THTXZB/oRXGEc6w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjWrvfFf4D9wdZj7KOms8t7NwsOuPPzLa03qXHszxGDcCYO5qQ
	SyvKND96gLmxZD1XWR5gV2X8l8pzkH6BBgikA98gOqPz0wet8g4qvpy16pRZgQs14Dp7LX71QO2
	MOhgUVKQ9hQoDEcBd3ZGDX6bPMVPWjxBboltlZuvlfOQ7n3KYUZLmvAA20WPy9JCakC8E
X-Gm-Gg: ASbGncvy1cXsWnWcflPCtNqOZprilbYi0wBqLky1weKPxsdCBnRIGX2917WQbCyNuSK
	7IUwZNl27T3NRax/gOzjtWe4KNWq/CB2TG3VfeL1LbRCXygAeeve92pG58NqGrXjIrxp5Ipvhnp
	e+wMetU32WTKGRCZ7CdI7HQu/tPgkLLwIun96Rm1FH81fowurCPqQS0N1OE1JhR4g1OGxrFHOs6
	zDxB8IK2EGLEx2RoA726mHKeK95+Iot3dX117ZJrqh7IvpPL96ukO50RD581xSuagYITBhw9mIG
	Cg7c4nhHuHCOVaA/OC7SR4T0ma2/JgG/dDUo96jFpJ/6e4Pn6bx+Qkx2tkkErbXcgYZmPyEGQhe
	NUCHEbCUN0M41h5MLPR2+NudwnCUynuUX/JE=
X-Received: by 2002:a05:6a00:1828:b0:77f:3f06:1f78 with SMTP id d2e1a72fcca58-77f537a8173mr828261b3a.2.1758598729780;
        Mon, 22 Sep 2025 20:38:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5W8YAPrrchgMVeHplJ5Ln5bt4yZvCXn/JchjMJMX2nlmqazlCN5vnpvVhSh9oEhVk8Z5oRg==
X-Received: by 2002:a05:6a00:1828:b0:77f:3f06:1f78 with SMTP id d2e1a72fcca58-77f537a8173mr828234b3a.2.1758598729324;
        Mon, 22 Sep 2025 20:38:49 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f41b85e84sm3439351b3a.86.2025.09.22.20.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 20:38:48 -0700 (PDT)
Message-ID: <d7b2a904-97de-4716-b179-4ad8d3ecbe58@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 11:38:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <rob.clark@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
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
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
 <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
 <CACSVV00Bat6LE=joM+Wh3HnC1=c3_Y=crxUGdhLQWxxpZ17Q3g@mail.gmail.com>
 <t4x7okzjvh5ltyoniwlreoyy76735igtnxpeohpbojn4hkqk4q@v3ayfjrkez3e>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <t4x7okzjvh5ltyoniwlreoyy76735igtnxpeohpbojn4hkqk4q@v3ayfjrkez3e>
X-Proofpoint-ORIG-GUID: mnlvsHUz9cMTwloGTjymYcNCzOMh-ZgL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX8tHkRJMtmJfg
 KDxXFXZY32wZjiPejd6r4TrNUU+br5gYJN9Xkqq6Ia5UEkx+wrlS9LHso7RSMDeOuzcvEi+L6Gu
 AWzQtJSE/+6Bs9AqDS3nHsxhEDhOUHvi4g0Kp0FomPrif2BAg4uvNAqM2UEXVG7gxF2UxbybQG3
 u4NRCc6MywdLheGGWXy+t1zJZownD7OX9dTs+AjbMZ71l6cCaXHW2/EmF0mXuGnFr1mH/noWgYc
 n3SOwAut+jrFd+199e/AiSXa9Z/fiEFm7C1Y0GFQ+jZ0OLxmilymJo1Xpw6c0FFx3KRRYawrkqL
 HUuJBmqYi4bgj2YXYiBQejH8NLTs88zLUknRsCs19BbBFDL4qK2U7nFYy1q1IBHorTHQZ0puTul
 K5a6na4G
X-Proofpoint-GUID: mnlvsHUz9cMTwloGTjymYcNCzOMh-ZgL
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d2164a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gP3TSUq4Lgg7EeaY2V8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_203852_509019_D22DAD35 
X-CRM114-Status: GOOD (  22.31  )
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

Ck9uIDkvMjMvMjAyNSA3OjM5IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDA4OjEzOjAwQU0gLTA3MDAsIFJvYiBDbGFyayB3cm90ZToKPj4gT24g
RnJpLCBTZXAgMTksIDIwMjUgYXQgMTE6MzXigK9BTSBEbWl0cnkgQmFyeXNoa292Cj4+IDxkbWl0
cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Pj4gT24gRnJpLCBTZXAgMTks
IDIwMjUgYXQgMTA6MjQ6MzFQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4gUUNTNjE1
IHBsYXRmb3JtIHJlcXVpcmVzIG5vbi1kZWZhdWx0IGxvZ2ljYWwtdG8tcGh5c2ljYWwgbGFuZSBt
YXBwaW5nIGR1ZQo+Pj4+IHRvIGl0cyB1bmlxdWUgaGFyZHdhcmUgcm91dGluZy4gVW5saWtlIHRo
ZSBzdGFuZGFyZCBtYXBwaW5nIHNlcXVlbmNlCj4+Pj4gPDAgMSAyIDM+LCBRQ1M2MTUgdXNlcyA8
MyAyIDAgMT4sIHdoaWNoIG5lY2Vzc2l0YXRlcyBleHBsaWNpdAo+Pj4+IGNvbmZpZ3VyYXRpb24g
dmlhIHRoZSBkYXRhLWxhbmVzIHByb3BlcnR5IGluIHRoZSBkZXZpY2UgdHJlZS4gVGhpcyBlbnN1
cmVzCj4+Pj4gY29ycmVjdCBzaWduYWwgcm91dGluZyBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVy
IGFuZCBQSFkuCj4+Pj4KPj4+PiBGb3IgcGFydGlhbCBkZWZpbml0aW9ucywgZmlsbCByZW1haW5p
bmcgbGFuZXMgd2l0aCB1bnVzZWQgcGh5c2ljYWwgbGFuZXMKPj4+PiBpbiBhc2NlbmRpbmcgb3Jk
ZXIuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3Nz
LnF1YWxjb21tLmNvbT4KPj4+PiAtLS0KPj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9j
dHJsLmMgfCAxMCArKystLS0tCj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5j
IHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuaCB8ICAxICsKPj4+PiAgMyBmaWxlcyBjaGFuZ2Vk
LCA2NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9k
cC9kcF9saW5rLmMKPj4+PiBpbmRleCAyYWViM2VjZjc2ZmFiMmVlNmE5NTEyYjc4NWNhNWRjZWVi
ZmMzOTY0Li4zNGE5MWUxOTRhMTI0ZWY1MzcyZjEzMzUyZjdiMzUxM2FhODhkYTJhIDEwMDY0NAo+
Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5jCj4+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5rLmMKPj4+PiBAQCAtMTIzNiw2ICsxMjM2LDYxIEBA
IHN0YXRpYyB1MzIgbXNtX2RwX2xpbmtfbGlua19mcmVxdWVuY2llcyhzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm9mX25vZGUpCj4+Pj4gICAgICAgcmV0dXJuIGZyZXF1ZW5jeTsKPj4+PiAgfQo+Pj4+Cj4+
Pj4gKy8qCj4+Pj4gKyAqIEFsd2F5cyBwb3B1bGF0ZSBtc21fZHBfbGluay0+bGFuZV9tYXAgd2l0
aCA0IGxhbmVzLgo+Pj4+ICsgKiAtIFVzZSBEVFMgImRhdGEtbGFuZXMiIGlmIHByZXNlbnQ7IG90
aGVyd2lzZSBmYWxsIGJhY2sgdG8gZGVmYXVsdCBtYXBwaW5nLgo+Pj4+ICsgKiAtIEZvciBwYXJ0
aWFsIGRlZmluaXRpb25zLCBmaWxsIHJlbWFpbmluZyBlbnRyaWVzIHdpdGggdW51c2VkIGxhbmVz
IGluCj4+Pj4gKyAqICAgYXNjZW5kaW5nIG9yZGVyLgo+Pj4+ICsgKi8KPj4+PiArc3RhdGljIGlu
dCBtc21fZHBfbGlua19sYW5lX21hcChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBtc21fZHBf
bGluayAqbXNtX2RwX2xpbmspCj4+Pj4gK3sKPj4+PiArICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUg
Km9mX25vZGUgPSBkZXYtPm9mX25vZGU7Cj4+Pj4gKyAgICAgc3RydWN0IGRldmljZV9ub2RlICpl
bmRwb2ludDsKPj4+PiArICAgICBpbnQgY250ID0gbXNtX2RwX2xpbmstPm1heF9kcF9sYW5lczsK
Pj4+PiArICAgICB1MzIgdG1wW0RQX01BWF9OVU1fRFBfTEFORVNdOwo+Pj4+ICsgICAgIHUzMiBt
YXBbRFBfTUFYX05VTV9EUF9MQU5FU10gPSB7MCwgMSwgMiwgM307IC8qIGRlZmF1bHQgMToxIG1h
cHBpbmcgKi8KPj4+PiArICAgICBib29sIHVzZWRbRFBfTUFYX05VTV9EUF9MQU5FU10gPSB7ZmFs
c2V9Owo+Pj4+ICsgICAgIGludCBpLCBqID0gMCwgcmV0ID0gLUVJTlZBTDsKPj4+PiArCj4+Pj4g
KyAgICAgZW5kcG9pbnQgPSBvZl9ncmFwaF9nZXRfZW5kcG9pbnRfYnlfcmVncyhvZl9ub2RlLCAx
LCAtMSk7Cj4+Pj4gKyAgICAgaWYgKGVuZHBvaW50KSB7Cj4+Pj4gKyAgICAgICAgICAgICByZXQg
PSBvZl9wcm9wZXJ0eV9yZWFkX3UzMl9hcnJheShlbmRwb2ludCwgImRhdGEtbGFuZXMiLCB0bXAs
IGNudCk7Cj4+Pj4gKyAgICAgICAgICAgICBpZiAocmV0KQo+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICBkZXZfZGJnKGRldiwgImVuZHBvaW50IGRhdGEtbGFuZXMgcmVhZCBmYWlsZWQgKHJldD0l
ZClcbiIsIHJldCk7Cj4+Pj4gKyAgICAgfQo+Pj4+ICsKPj4+PiArICAgICBpZiAocmV0KSB7Cj4+
Pj4gKyAgICAgICAgICAgICByZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMl9hcnJheShvZl9ub2Rl
LCAiZGF0YS1sYW5lcyIsIHRtcCwgY250KTsKPj4+PiArICAgICAgICAgICAgIGlmIChyZXQpIHsK
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgZGV2X2luZm8oZGV2LCAiZGF0YS1sYW5lcyBub3Qg
ZGVmaW5lZCwgc2V0IHRvIGRlZmF1bHRcbiIpOwo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBn
b3RvIG91dDsKPj4+PiArICAgICAgICAgICAgIH0KPj4+PiArICAgICB9Cj4+Pj4gKwo+Pj4+ICsg
ICAgIGZvciAoaSA9IDA7IGkgPCBjbnQ7IGkrKykgewo+Pj4+ICsgICAgICAgICAgICAgaWYgKHRt
cFtpXSA+PSBEUF9NQVhfTlVNX0RQX0xBTkVTKSB7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IGRldl9lcnIoZGV2LCAiZGF0YS1sYW5lc1slZF09JXUgb3V0IG9mIHJhbmdlXG4iLCBpLCB0bXBb
aV0pOwo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+PiArICAg
ICAgICAgICAgIH0KPj4+PiArICAgICAgICAgICAgIHVzZWRbdG1wW2ldXSA9IHRydWU7Cj4+Pj4g
KyAgICAgICAgICAgICBtYXBbaV0gPSB0bXBbaV07Cj4+Pj4gKyAgICAgfQo+Pj4+ICsKPj4+PiAr
ICAgICAvKiBGaWxsIHRoZSByZW1haW5pbmcgZW50cmllcyB3aXRoIHVudXNlZCBwaHlzaWNhbCBs
YW5lcyAoYXNjZW5kaW5nKSAqLwo+Pj4+ICsgICAgIGZvciAoaSA9IGNudDsgaSA8IERQX01BWF9O
VU1fRFBfTEFORVMgJiYgaiA8IERQX01BWF9OVU1fRFBfTEFORVM7IGorKykgewo+Pj4gTml0OiBp
ID0gY250LCBqID0gMDsgRG9uJ3QgaW5pdCBsb29wIHZhcmlhYmxlcyBhdCB0aGUgdG9wIG9mIHRo
ZQo+Pj4gZnVuY3Rpb24uCj4+IFRoZXNlIGRheXMgd2UgY2FuIHBhcnR5IGxpa2UgaXQncyBjOTkg
YW5kIGRlY2xhcmUgbG9vcCB2YXJpYWJsZXMKPj4gaW5zaWRlIHRoZSBmb3IoKSwgaW5zdGVhZCBv
ZiBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbi4gIE15Cj4+IHByZWZlcmVuY2UgaXMgdG8gZG8g
c28sIHVubGVzcyB0aGUgbG9vcCB2YXJpYWJsZSBpcyB1c2VkIGFmdGVyIHRoZQo+PiBsb29wLgo+
IEFjaywgd29ya3MgZm9yIG1lIHRvby4gSSB0aGluayBJJ20gbm90IHVzZWQgZm9yIGhhdmluZyB0
aGVlc2UgcGFydHMgb2YKPiBDOTkgYWxsb3dlZCBpbiB0aGUga2VybmVsLgoKCkdvdCBpdC4gaiBp
cyBvbmx5IHVzZWQgaW4gdGhhdCBmb3IgbG9vcCwgc28gSSdsbCB1cGRhdGUgaXQgdG8gdXNlIEM5
OS1zdHlsZSBkZWNsYXJhdGlvbiBhcyBzdWdnZXN0ZWQuCgoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
