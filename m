Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5265C3ABD8
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 10:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYvbbyBvgNjZkt1HFhuHBJvmQXPWoFcZiAwCLkl7gac=; b=rExettx/H6LG8s
	MH+62/57VSCoR5LqCu1rZux+5XyRa7C3XqrkMRWmQ59QK+m6hFUsEy2PTrbnwDgoU8VnZpYwhYWnj
	8lKbYnnZEKfF6AgSZpmR2k0cpGRMGiHcgfXpAUKj8gItH4a7rba44V1k+T/khj6/exED8OZ6ae3Ru
	X6HbpAL3upMX8FZ7FduaDOSk9TT85uYiTRDKUWqsHytLNhBj01kNyQwFswu6++6OCQvbvLEJslxLf
	wmt/uanYzwD3GZ6pXqH1m8Va4cktF8KG+izL6SeSMuiALlR8IKLWWaLiN2Z+gZv+U3jTZbPNpTdZ8
	eO4J2pUda0LS1DSI3Hkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxP8-00000008jfe-0naF;
	Mon, 19 May 2025 10:07:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxGp-00000008hxz-10qP
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 09:58:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J4F8hf014390
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 09:58:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LtRSP0W/Hi/ORrZUvPbtJEppxen42qKsaFvRPV9cHiU=; b=TXNHU6nOVjDmQnQ0
	ZHwB9FxGEVR1jbikywyZQNXsDj14RHa/q6hIkEiNJguUpQE+gc9J1kJr2le2hgUp
	38+m5/DS92ZsBbW8O4SlK1aKX/p69bqdfZOqlMsS/le7fU32hni+oB6n/WLAsLco
	mcU/A/bboiwpxVsfrvTj6AsoJn3iRoQNVnqnX0PlLHqIkynieQTiYeAza8ZwY73g
	cgYxYNYAD7d7NNSOWiqjjp4224FS8BwWC1ElKuxky8iYEBjlYTkdIjWHXiSsEjRS
	gbwLmulsLbgjXC37o/Lo+TLSciuJ0yDg5zQoBFSov9GqzAP8r4r8LDeOfmMFHJb3
	pXPIJA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46qwengyxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 09:58:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2322e8c4dc5so9790315ad.3
        for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 02:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747648714; x=1748253514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LtRSP0W/Hi/ORrZUvPbtJEppxen42qKsaFvRPV9cHiU=;
        b=jn/ejTR4XH/dS/RPvPdT++f+TOb0jKkSsUVczfRMMvmDnYK8xbuICOpJ3ZpHfalaMI
         Yp09jXpZXPk2QupnVM9EMmlvPtSiWG2+RxjXZ5OtEzxICt6jWW/Hex36wyrXV+X8rb0E
         gsmi4jDzRT881Iczyhnmrf541b70OZ/yWCkW+0WM41USO0vQtUcgL3hQxC7sgSorcTy3
         n6WmW+XAFK8z+XKLFkrkAruN5zKLL96zee/PIxd2nmioFeTNv6TdX3UGiqVVjSrTMcXR
         rgV6pwkl+vDVk2bJAKXcBBKovKzs06WWUZioQyCHQ2XNw9nKj2cdQh9ncrRuKh+NFTgN
         zMjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA+pPivvljwNympF688GAbBPKDcERfTHk7efvx9gCwA6zB1jWNg62VIsOhSFNgBwFjPwoMLbPj/MU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw++1f3gFFI1GEtZzYqAjv2B8QI+5QY8c3X9sAZjdNFHLAEP1IM
	Oytxyw3e9SgV/0M8oGupcKbQXZnV/BUl9JLVAzQOrRiFBhZZ33cD1NCO3pu1ikWX8L/SfKK7Puu
	E/bstQ+vBviCOj/b5MCK5gg7Ldz/IKHauRGSDxrIZl960Ix4YwYHgB9YeUve7JJ+xKxzl7n8Ts1
	VShHmwRKNO9aBm4mbMJHofqzZHPA9Rc6uQrpu3LLbTmQw=
X-Gm-Gg: ASbGncu/TBbuxL5NocL/Gv4WDeKGTsGevF8FgPDOQvUn57UyJKzZ/9XuDgx647xCrx3
	D2U6xNpdAxvm0+slM9+HqfwMWrc4z6nONa6h/1nyNaU7rDgQAwhV2yO0zvw8Er0PC1PMnNA==
X-Received: by 2002:a17:903:32ce:b0:220:ca39:d453 with SMTP id d9443c01a7336-231d43a3e56mr158912645ad.17.1747648713809;
        Mon, 19 May 2025 02:58:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExn4Fi0qVE9XRinsKH7NraHA9o5v8AI9xLA26xgaqMjhcTZYmC0IGjhwzyp6Xbz3vqAPlHRfX1tB5ApLE9zIE=
X-Received: by 2002:a17:903:32ce:b0:220:ca39:d453 with SMTP id
 d9443c01a7336-231d43a3e56mr158912045ad.17.1747648713296; Mon, 19 May 2025
 02:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com> <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com> <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
 <e647d143-dc6e-483d-ac81-2733fb526fc3@quicinc.com> <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
 <9fb34496-d823-414a-b7dc-54b4677829e5@quicinc.com> <td4dkb6qoxfa7lfmfszlowov6qxdukqq5qnwnhmajnskr5mu2u@todczb6inttv>
 <84500975-eb32-471f-a64a-283e885ae84e@oss.qualcomm.com>
In-Reply-To: <84500975-eb32-471f-a64a-283e885ae84e@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 19 May 2025 12:58:24 +0300
X-Gm-Features: AX0GCFvlZEV_LK_ZpMUc7YfrpjUtt-lV8Ml6r7s02ciIgwoo4P2Pz40tNLgyS3s
Message-ID: <CAO9ioeUNgF=ZipJjOyo=szFOqqpMgbyM_srq19PbEy3sfmNgag@mail.gmail.com>
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping configuration
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
X-Proofpoint-GUID: ea-yfTfgcbv-ZSmTykSYQx8l0C1eR6j9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA5NSBTYWx0ZWRfX8QaEQbHIO+e3
 WJNlDFaNXhSTEvY4soKDRVnY49nv6Yjn5jjZHH+1UwQEQ9xvzEb18EBnZkzH6Ra/jjxQZrAVilz
 B8DVy51tGUg+60V8fft/KgqI7f/lKpeGYW15LjsvXxWg+4WMfJTm3YgbTMZOXqs+A9u/1tN48Sm
 7SnswRqarevd5J1zUuev2M2w47sX1ZVZwb7A07z5S0aWmnhK+xvpukMBy9ljVIrzSzmHa0+6A9W
 rZ4XWRPogNgcejQgwH2IcKHcd5ThFYRDmYyT3ihy21Z9x/3t6X9nACBiPDe5B/vuJ1tVPpyldgu
 CF2KFDNLAuj1KtSwCxeBVvWvzTQXwqD3Sxct0UhO/ZLPecI3LwC0LtnZkAzIgD1/b2f/6TEDvGK
 N1vOf2ki4hpg+H16ye+Ji7ygRekpbr+W97J1BqXG/q8hn65gP51HCVjzjpyd4xZoUb9PxZ/+
X-Authority-Analysis: v=2.4 cv=Wd8Ma1hX c=1 sm=1 tr=0 ts=682b00dd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=e5mUnYsNAAAA:8 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=4rmEANqFzdCXNiHzqtoA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=7KeoIwV6GZqOttXkcoxL:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ea-yfTfgcbv-ZSmTykSYQx8l0C1eR6j9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_025855_415554_5896FA6D 
X-CRM114-Status: GOOD (  41.68  )
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

T24gTW9uLCAxOSBNYXkgMjAyNSBhdCAxMToyMCwgWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9z
cy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4KPgo+IE9uIDMvNi8yMDI1IDU6MTQgQU0sIERtaXRy
eSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBXZWQsIE1hciAwNSwgMjAyNSBhdCAwNjoxNjo0NVBN
ICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4gT24gMTIvMjAvMjAyNCA1
OjQ1IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+PiBPbiBUaHUsIERlYyAxOSwgMjAy
NCBhdCAwNjozNjozOFBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiA+Pj4+Cj4gPj4+Pgo+
ID4+Pj4gT24gMTIvNS8yMDI0IDc6NDAgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+
Pj4gT24gVGh1LCA1IERlYyAyMDI0IGF0IDEzOjI4LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1
eUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+
IE9uIDEyLzIvMjAyNCA2OjQ2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+Pj4+Pj4g
T24gTW9uLCBEZWMgMDIsIDIwMjQgYXQgMDQ6NDA6MDVQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE9uIDExLzI5LzIwMjQgOTo1MCBQ
TSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+Pj4+Pj4+Pj4gT24gRnJpLCAyOSBOb3YgMjAy
NCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3Rl
Ogo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IEFkZCB0aGUgYWJpbGl0eSB0byBjb25maWd1cmUg
bGFuZSBtYXBwaW5nIGZvciB0aGUgRFAgY29udHJvbGxlci4gVGhpcyBpcwo+ID4+Pj4+Pj4+Pj4g
cmVxdWlyZWQgd2hlbiB0aGUgcGxhdGZvcm0ncyBsYW5lIG1hcHBpbmcgZG9lcyBub3QgZm9sbG93
IHRoZSBkZWZhdWx0Cj4gPj4+Pj4+Pj4+PiBvcmRlciAoMCwgMSwgMiwgMykuIFRoZSBtYXBwaW5n
IHJ1bGVzIGFyZSBub3cgY29uZmlndXJhYmxlIHZpYSB0aGUKPiA+Pj4+Pj4+Pj4+IGBkYXRhLWxh
bmVgIHByb3BlcnR5IGluIHRoZSBkZXZpY2V0cmVlLiBUaGlzIHByb3BlcnR5IGRlZmluZXMgdGhl
Cj4gPj4+Pj4+Pj4+PiBsb2dpY2FsLXRvLXBoeXNpY2FsIGxhbmUgbWFwcGluZyBzZXF1ZW5jZSwg
ZW5zdXJpbmcgY29ycmVjdCBsYW5lCj4gPj4+Pj4+Pj4+PiBhc3NpZ25tZW50IGZvciBub24tZGVm
YXVsdCBjb25maWd1cmF0aW9ucy4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4KPiA+Pj4+Pj4+Pj4+
IC0tLQo+ID4+Pj4+Pj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY2F0YWxvZy5jIHwg
MTEgKysrKystLS0tLS0KPiA+Pj4+Pj4+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Nh
dGFsb2cuaCB8ICAyICstCj4gPj4+Pj4+Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9j
dHJsLmMgICAgfCAgMiArLQo+ID4+Pj4+Pj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBf
cGFuZWwuYyAgIHwgMTMgKysrKysrKysrKy0tLQo+ID4+Pj4+Pj4+Pj4gIGRyaXZlcnMvZ3B1L2Ry
bS9tc20vZHAvZHBfcGFuZWwuaCAgIHwgIDMgKysrCj4gPj4+Pj4+Pj4+PiAgNSBmaWxlcyBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPiA+Pj4+Pj4+Pj4+Cj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4+Pj4gQEAgLTQ2MSw2ICs0NjAsNyBAQCBzdGF0aWMgaW50IG1zbV9kcF9w
YW5lbF9wYXJzZV9kdChzdHJ1Y3QgbXNtX2RwX3BhbmVsICptc21fZHBfcGFuZWwpCj4gPj4+Pj4+
Pj4+PiAgICAgICAgIHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSAqcGFuZWw7Cj4gPj4+Pj4+
Pj4+PiAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqb2Zfbm9kZTsKPiA+Pj4+Pj4+Pj4+ICAg
ICAgICAgaW50IGNudDsKPiA+Pj4+Pj4+Pj4+ICsgICAgICAgdTMyIGxhbmVfbWFwW0RQX01BWF9O
VU1fRFBfTEFORVNdID0gezAsIDEsIDIsIDN9Owo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+ICAg
ICAgICAgcGFuZWwgPSBjb250YWluZXJfb2YobXNtX2RwX3BhbmVsLCBzdHJ1Y3QgbXNtX2RwX3Bh
bmVsX3ByaXZhdGUsIG1zbV9kcF9wYW5lbCk7Cj4gPj4+Pj4+Pj4+PiAgICAgICAgIG9mX25vZGUg
PSBwYW5lbC0+ZGV2LT5vZl9ub2RlOwo+ID4+Pj4+Pj4+Pj4gQEAgLTQ3NCwxMCArNDc0LDE3IEBA
IHN0YXRpYyBpbnQgbXNtX2RwX3BhbmVsX3BhcnNlX2R0KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1z
bV9kcF9wYW5lbCkKPiA+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICBjbnQgPSBkcm1fb2ZfZ2V0
X2RhdGFfbGFuZXNfY291bnQob2Zfbm9kZSwgMSwgRFBfTUFYX05VTV9EUF9MQU5FUyk7Cj4gPj4+
Pj4+Pj4+PiAgICAgICAgIH0KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiAtICAgICAgIGlmIChj
bnQgPiAwKQo+ID4+Pj4+Pj4+Pj4gKyAgICAgICBpZiAoY250ID4gMCkgewo+ID4+Pj4+Pj4+Pj4g
KyAgICAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqZW5kcG9pbnQ7Cj4gPj4+Pj4+Pj4+
PiArCj4gPj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgbXNtX2RwX3BhbmVsLT5tYXhfZHBfbGFu
ZXMgPSBjbnQ7Cj4gPj4+Pj4+Pj4+PiAtICAgICAgIGVsc2UKPiA+Pj4+Pj4+Pj4+ICsgICAgICAg
ICAgICAgICBlbmRwb2ludCA9IG9mX2dyYXBoX2dldF9lbmRwb2ludF9ieV9yZWdzKG9mX25vZGUs
IDEsIC0xKTsKPiA+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICBvZl9wcm9wZXJ0eV9yZWFkX3Uz
Ml9hcnJheShlbmRwb2ludCwgImRhdGEtbGFuZXMiLCBsYW5lX21hcCwgY250KTsKPiA+Pj4+Pj4+
Pj4+ICsgICAgICAgfSBlbHNlIHsKPiA+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICBtc21fZHBf
cGFuZWwtPm1heF9kcF9sYW5lcyA9IERQX01BWF9OVU1fRFBfTEFORVM7IC8qIDQgbGFuZXMgKi8K
PiA+Pj4+Pj4+Pj4+ICsgICAgICAgfQo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBXaHk/IFRoaXMg
c291bmRzIG1vcmUgbGlrZSBkcF9jYXRhbG9nIG9yIChhZnRlciB0aGUgcmVmYWN0b3JpbmcgYXQK
PiA+Pj4+Pj4+Pj4gWzFdKSBkcF9jdHJsLiBCdXQgbm90IHRoZSBkcF9wYW5lbC4KPiA+Pj4+Pj4+
Pj4KPiA+Pj4+Pj4+Pj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wcm9q
ZWN0L2ZyZWVkcmVuby9zZXJpZXMvP29yZGVyaW5nPS1sYXN0X3VwZGF0ZWQKPiA+Pj4+Pj4+Pj4K
PiA+Pj4+Pj4+PiBXZSBhcmUgdXNlZCB0aGUgc2FtZSBwcm9wICdkYXRhLWxhbmVzID0gPDMgMiAw
IDE+JyBpbiBtZHNzX2RwX291dCB0byBrZWVwIHNpbWlsYXIgYmVoYXZpb3VyIHdpdGggZHNpX2hv
c3RfcGFyc2VfbGFuZV9kYXRhLgo+ID4+Pj4+Pj4+IEZyb20gdGhlIG1vZHVsZXMgdXNlZCwgY2F0
YWxvZyBzZWVtcyBtb3JlIGFwcHJvcHJpYXRlLCBidXQgc2luY2UgdGhlIG1heF9kcF9sYW5lcyBp
cyBwYXJzZWQgYXQgZHBfcGFuZWwsIGl0IGhhcyBiZWVuIHBsYWNlZCBoZXJlLgo+ID4+Pj4+Pj4+
IFNob3VsZCBsYW5lX21hcCBwYXJzaW5nIGluIG1zbV9kcF9jYXRhbG9nX2dldCwgYW5kIGtlZXAg
bWF4X2RwX2xhbmVzIHBhcnNpbmcgYXQgdGhlIGRwX3BhbmVsPwo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+
IG1zbV9kcF9jYXRhbG9nX2dldCgpIGlzIGdvaW5nIHRvIGJlIHJlbW92ZWQuIFNpbmNlIHRoZSBm
dW5jdGlvbnMgdGhhdAo+ID4+Pj4+Pj4gYXJlIGdvaW5nIHRvIHVzZSBpdCBhcmUgaW4gZHBfY3Ry
bCBtb2R1bGUsIEkgdGhvdWdodCB0aGF0IGRwX2N0cmwuYyBpcwo+ID4+Pj4+Pj4gdGhlIGJlc3Qg
cGxhY2UuIEEgYmV0dGVyIG9wdGlvbiBtaWdodCBiZSB0byBtb3ZlIG1heF9kcF9sYW5lcyBhbmQK
PiA+Pj4+Pj4+IG1heF9kcF9saW5rX3JhdGUgdG8gZHBfbGluay5jIGFzIHRob3NlIGFyZSBsaW5r
IHBhcmFtcy4gVGhlbgo+ID4+Pj4+Pj4gbGFuZV9tYXBwaW5nIGFsc28gbG9naWNhbGx5IGJlY29t
ZXMgYSBwYXJ0IG9mIGRwX2xpbmsgbW9kdWxlLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEJ1dCBub3cg
SSBoYXZlIGEgbW9yZSBpbXBvcnRhbnQgcXVlc3Rpb24gKHRyaWdnZXJlZCBieSBLcmlzaG5hJ3Mg
ZW1haWwKPiA+Pj4+Pj4+IGFib3V0IFNBUjIxMzBQJ3MgVVNCKTogaWYgdGhlIGxhbmVzIGFyZSBz
d2FwcGVkLCBkb2VzIFVTQiAzIHdvcmsgb24gdGhhdAo+ID4+Pj4+Pj4gcGxhdGZvcm0/IE9yIGlz
IGl0IGJlaW5nIGRlbW90ZWQgdG8gVVNCIDIgd2l0aCBub2JvZHkgbm90aWNpbmcgdGhhdD8KPiA+
Pj4+Pj4+Cj4gPj4+Pj4+PiBJZiBsYW5lcyAwLzEgYW5kIDIvMyBhcmUgc3dhcHBlZCwgc2hvdWxk
bid0IGl0IGJlIGhhbmRsZWQgaW4gdGhlIFFNUAo+ID4+Pj4+Pj4gUEhZLCB3aGVyZSB3ZSBoYW5k
bGUgbGFuZXMgYW5kIG9yaWVudGF0aW9uIHN3aXRjaGluZz8KPiA+Pj4+Pj4+Cj4gPj4+Pj4+IEkg
aGF2ZSBjaGVja2VkIHRoZSBEUCBoYXJkd2FyZSBwcm9ncmFtbWluZyBndWlkZSBhbmQgYWxzbyBk
aXNjdXNzZWQgaXQgd2l0aCBLcmlzaG5hLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBBY2NvcmRpbmcgdG8g
dGhlIEhQRyBzZWN0aW9uICczLjQuMiBQTiBhbmQgTGFuZSBTd2FwOiBQSFkgc3VwcG9ydHMgUE4g
c3dhcCBmb3IgbWFpbmxpbmsgYW5kIEFVWCwgYnV0IGl0IGRvZXNuJ3Qgc3VwcG9ydCBsYW5lIHN3
YXAgZmVhdHVyZS4nCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoZSBsYW5lIHN3YXAgbWFpbmx5IHJlZmVy
cyB0byB0aGUgbG9naWNhbCB0byBwaHlzaWNhbCBtYXBwaW5nIGJldHdlZW4gdGhlIERQIGNvbnRy
b2xsZXIgYW5kIHRoZSBEUCBQSFkuIFRoZSBQSFkgaGFuZGxlcyBwb2xhcml0eSBpbnZlcnNpb24s
IGFuZCB0aGUgbGFuZSBtYXAgZG9lcyBub3QgYWZmZWN0IFVTQiBiZWhhdmlvci4KPiA+Pj4+Pj4K
PiA+Pj4+Pj4gT24gdGhlIFFDUzYxNSBwbGF0Zm9ybSwgd2UgaGF2ZSBhbHNvIHRlc3RlZCB3aGVu
IERQIHdvcmtzIHdpdGggbGFuZSBzd2FwLCBvdGhlciBVU0IgMy4wIHBvcnRzIGNhbiB3b3JrcyBu
b3JtYWxseSBhdCBzdXBlciBzcGVlZC4KPiA+Pj4+Pgo+ID4+Pj4+ICJPdGhlciBVU0IgMy4wIHBv
cnRzIj8gV2hhdCBkb2VzIHRoYXQgbWVhbj8gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtCj4gPj4+
Pj4gd3JvbmcsIHlvdSBzaG91bGQgaGF2ZSBhIFVTQitEUCBjb21ibyBwb3J0IHRoYXQgaXMgYmVp
bmcgbWFuYWdlZCB3aXRoCj4gPj4+Pj4gY29tYm8gUEhZLiBEb2VzIFVTQiAzIHdvcmsgb24gdGhh
dCBwb3J0Pwo+ID4+Pj4+Cj4gPj4+Pj4gSW4gb3RoZXIgd29yZHMsIHdoZXJlIHRoZSBvcmRlciBv
ZiBsYW5lcyBpcyBhY3R1YWxseSBpbnZlcnRlZD8gQmV0d2Vlbgo+ID4+Pj4+IERQIGFuZCBjb21i
byBQSFk/IFdpdGhpbiBjb21ibyBQSFk/IEJldHdlZW4gdGhlIFBIWSBhbmQgdGhlIHBpbm91dD8K
PiA+Pj4+PiBHcmFudGVkIHRoYXQgU002MTUwIHdhcyBzdXBwb3J0ZWQgaW4gbXNtLTQuMTQgY291
bGQgeW91IHBvc3NpYmx5IHBvaW50Cj4gPj4+Pj4gb3V0IGEgY29ycmVzcG9uZGluZyBjb21taXQg
b3IgYSBzZXQgb2YgY29tbWl0cyBmcm9tIHRoYXQga2VybmVsPwo+ID4+Pj4+Cj4gPj4+PiBGb3Ig
Ik90aGVyIFVTQiAzLjAgcG9ydHMiLCBhcyByZXBsaWVkIGluIFVTQkMgZHJpdmVyLCBVU0IzIHBy
aW1hcnkgcGh5IHdvcmtzIGZvciBvdGhlciBmb3VyIFVTQiB0eXBlLUEgcG9ydC4KPiA+Pj4KPiA+
Pj4gU28gaWYgdGhhdCdzIHRoZSBVU0IzIHByaW1hcnksIHRoZW4gd2h5IGRvIHlvdSBtZW50aW9u
IGhlcmUgYXQgYWxsPyBXZQo+ID4+PiBhcmUgdGFsaW5nIGFib3V0IHRoZSBzZWNvbmRhcnkgVVNC
MyArIERQLgo+ID4+Pgo+ID4+IE9LLCBzb3JyeSBmb3IgY29uZnVzaW5nIHlvdS4KPiA+Pj4+IFRo
ZSBSRUdfRFBfTE9HSUNBTDJQSFlTSUNBTF9MQU5FX01BUFBJTkcgbWFwcGluZyBkZXRlcm1pbmVz
IGhvdyBsb2dpY2FsIGxhbmVzICgwLCAxLCAyLCAzKSBtYXAgdG8gcGh5c2ljYWwgbGFuZXMgc2Vu
dCB0byB0aGUgUEhZLgo+ID4+Pj4gVGhpcyBlbnN1cmVzIGFsaWdubWVudCB3aXRoIGhhcmR3YXJl
IHJlcXVpcmVtZW50cy4KPiA+Pj4+IFRoZSBQSFnigJlzIHBvbGFyaXR5IGludmVyc2lvbiBvbmx5
IGFkanVzdHMgc2lnbmFsIHBvbGFyaXR5IGFuZCBkb2VzbuKAmXQgYWZmZWN0IGxhbmUgbWFwcGlu
Zy4KPiA+Pj4+IEJvdGggRFAgY3RybCBhbmQgUEhZIGxhbmUgcmVsYXRlZCBjb25maWcgd2lsbCBu
b3QgYWZmZWN0IFVTQiBwaHkuCj4gPj4+Cj4gPj4+IFByb2JhYmx5IHdlIG1pc3VuZGVyc2FuZCBl
YWNoIG90aGVyLiBUaGUgRFAgUEhZIHNob3VsZCBoYXZlIG9yaWVudGF0aW9uCj4gPj4+IHN3aXRj
aCByZWdpc3Rlciwgd2hpY2ggY29udHJvbHMgd2hldGhlciAyLWxhbmUgRFAgdXNlcyBsYW5lcyAw
LzEgb3IgMi8zLgo+ID4+PiBDYW4geW91IHVzZSB0aGF0IHJlZ2lzdGVyPwo+ID4+Pgo+ID4+IFll
cywgRFAgUEhZIGhhdmUgb3JpZW50YXRpb24gcmVnaXN0ZXIgYXMgYmVsb3cuCj4gPj4gRFBfUEhZ
X0RQX1BIWV9DRkdfMSgweDg4ZTkwMTQpIGJpdCg3KSBTV19QT1JUU0VMRUNUCj4gPj4+IEFsc28s
IGNvdWxkIHlvdSBfcGxlYXNlXyBhbnN3ZXIgdGhlIHF1ZXN0aW9uIHRoYXQgSSBoYXZlIGFza2Vk
PyBJcyB0aGUKPiA+Pj4gb3JkZXIgb2YgbGFuZXMgaW52ZXJ0ZWQgYmV0d2VlbiB0aGUgRFAgY29u
dHJvbGxlciBhbmQgRFAgUEhZPyBPciBiZXR3ZWVuCj4gPj4+IERQIFBIWSBhbmQgdGhlIERQIGNv
bm5lY3Rvcj8gSWYgb25lIHVzZXMgVVNCMyBzaWduYWxzIGNvbWluZyBmcm9tIHRoaXMKPiA+Pj4g
cG9ydCAoeWVzLCBvbiB0aGUgb3RoZXIgYm9hcmQsIG5vdCBvbiB0aGUgUmlkZSksIHdvdWxkIHRo
ZXkgYWxzbyBuZWVkIHRvCj4gPj4+IHN3aXRjaCB0aGUgb3JkZXIgb2YgVVNCMyBsYW5lcz8gSWYg
b25lIHVzZXMgYSBEUC1vdmVyLVVTQi1DLCBhcmUgRFAKPiA+Pj4gbGFuZXMgYXJlIHN3YXBwZWQ/
Cj4gPj4+Cj4gPj4gSXQncyBpbnZlcnRlZCBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVyIGFuZCBE
UCBQSFkuCj4gPj4gSWYgb3RoZXIgdXNlIFVTQjMgb24gdGhlIG90aGVyIGJvYXJkLCB3aWxsIG5v
dCBuZWVkIHN3aXRjaCBvcmRlciBvZiBVU0IzIGxhbmVzLAo+ID4+IElmIG9uZSB1c2UgRFAtb3Zl
ci1VU0ItQywgdGhlbiBuZWVkIERQIGxhbmVzIHN3YXAuCj4gPgo+ID4gVGhhbmtzIQo+ID4KPiA+
Pj4+IFdpdGhvdXQgZXh0cmEgVHlwZS1DIG1hcHBpbmcsIHRoZSBEUCBjb250cm9sbGVy4oCZcyBt
YXBwaW5nIGluZGlyZWN0bHkgZGVjaWRlcyBob3cgc2lnbmFscyBhcmUgdHJhbnNtaXR0ZWQgdGhy
b3VnaCBUeXBlLUMuCj4gPj4+PiBNYXBwaW5nIGVuc3VyZXMgcHJvcGVyIGRhdGEgdHJhbnNtaXNz
aW9uIGFuZCBjb21wYXRpYmlsaXR5IGFjcm9zcyBpbnRlcmZhY2VzLgo+ID4+Pj4KPiA+Pj4+IFdl
IG9ubHkgZm91bmQgc202MTUwIG5lZWQgdGhpcyBsYW5lIG1hcHBpbmcgY29uZmlnLAo+ID4+Pj4g
Rm9yIG1zbSA0LjE0LCBwbGVhc2UgcmVmZXIgdGhlc2UgbGlua3MsCj4gPj4+PiBodHRwczovL2Fu
ZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysvYWYwM2VlZjdkNGMzY2JkMWZlMjZj
NjdkNGYxOTE1YjA1ZDBjMTQ4OC9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc202MTUwLXNkZS5k
dHNpIChxY29tLGxvZ2ljYWwycGh5c2ljYWwtbGFuZS1tYXApCj4gPj4+PiBodHRwczovL2FuZHJv
aWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysvYWYwM2VlZjdkNGMzY2JkMWZlMjZjNjdk
NGYxOTE1YjA1ZDBjMTQ4OC9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhcnNlci5jIChkcF9w
YXJzZXJfbWlzYykKPiA+Pj4+IGh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5l
bC9tc20vKy9hZjAzZWVmN2Q0YzNjYmQxZmUyNmM2N2Q0ZjE5MTViMDVkMGMxNDg4L2RyaXZlcnMv
Z3B1L2RybS9tc20vZHAvZHBfY2F0YWxvZ192MjAwLmMgKGRwX2NhdGFsb2dfY3RybF9sYW5lX21h
cHBpbmdfdjIwMCkKPiA+Pj4+Cj4gPj4+PiBJZiBuZWVkIHByb2Nlc3Mgb3JpZW50YXRpb24gaW5m
byBsaWtlIGRwX2NhdGFsb2dfY3RybF9sYW5lX21hcHBpbmdfdjIwMCwKPiA+Pj4+IHRoZW4KPiA+
Pj4+IGlmIGltcGxlbWVudCBpbiBEUCBwaHksIHRoZW4gd2UgbmVlZCBjb25maWcgZHBfbGluayBy
ZWdpc3RlciBpbiBQSFksCj4gPj4+PiBpZiBpbXBsZW1lbnQgaW4gRFAgbGluaywgdGhlbiB3ZSBu
ZWVkIHBhc3Mgb3JpZW50YXRpb24gaW5mbyB0byBEUCBkcml2ZXIsIHBlcmhhcHMgd2UgY291bGQg
YWRkIGEgbmV3IGF0dHJpYnV0ZSB0byB0aGUgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwIHN0cnVjdHVy
ZSB0byBwYXNzIHRoaXMuCj4gPj4+PiBEbyB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/Cj4gPj4+
Cj4gPj4+IERvZXMgU1dfUE9SVFNFTF9WQUwgYWZmZWN0IHRoZSBEUCBsYW5lcyBvbiB0aGlzIHBs
YXRmb3JtPwo+ID4+Pgo+ID4+IFNXX1BPUlRTRUxfVkFMIGZvciBVU0IzUEhZX1BDU19NSVNDX1RZ
UEVDX0NUUkwgd2lsbCBub3QgYWZmZWN0IERQIGxhbmVzIGluIHRoaXMgRFAgb3IgVVNCMyBjaGlw
IHNlcmllcy4KPiA+PiBVU0IzIHdpbGwgdXNlIFVTQjNQSFlfUENTX01JU0NfVFlQRUNfQ1RSTChT
V19QT1JUU0VMX1ZBTCBCSVRfMCkgYW5kIERQIHdpbGwgdXNlIERQX1BIWV9EUF9QSFlfQ0ZHXzEo
U1dfUE9SVFNFTEVDVCBCSVRfNykKPiA+Cj4gPiBJcyBpdCBwb3NzaWJsZSB0byBzZXQgdGhpcyBi
aXQgZnJvbSB0aGUgUEhZIGRyaXZlciByYXRoZXIgdGhhbiByZW1hcHBpbmcKPiA+IHRoZSBsYW5l
cyBpbiB0aGUgRFAgZHJpdmVyPwo+ID4KPiBJIGhhdmUgdmVyaWZpZWQgYW5kIGNvbmZpcm1lZCB3
aXRoIGNoaXAgdmVyaWZpY2F0aW9uIHRlYW0uCj4KPiBXZSBjb25maWd1cmVkIHRoZSBsb2dpY2Fs
MnBoeXNpY2FsIG1hcHBpbmcgcHJpbWFyaWx5IHRvIGNvcnJlY3QgdGhlIFBIWSBvdXRwdXQgbWFw
cGluZy4KPiBDdXJyZW50bHksIHRoZSBsb2dpY2FsMnBoeXNpY2FsIG1hcHBpbmcgZGVmaW5lcyB0
aGUgaW5wdXQtdG8tb3V0cHV0IG1hcHBpbmcgZm9yIHRoZSBEUCBjb250cm9sbGVyLAo+IHdoaWxl
IHRoZSBTV19QT1JUU0VMRUNUIGluIFBIWSBkZXRlcm1pbmVzIHRoZSBzd2FwcGluZyBiZXR3ZWVu
IFBIWSBpbnB1dCBwb3J0cyAw4oaUMyBhbmQgMeKGlDIuCj4gV2hlbiB0aGUgRFAgY29udHJvbGxl
ciBpbnB1dCB0byBQSFkgb3V0cHV0IG1hcHBpbmcgaXMgY29ycmVjdGx5IGNvbmZpZ3VyZWQsIFBI
WSdzIFNXX1BPUlRTRUxFQ1QgY2FuIGJlIHVzZWQgdG8gaW1wbGVtZW50IGZsaXAgb3BlcmF0aW9u
cy4KPiBIb3dldmVyLCBkdWUgdG8gdGhlIGltcHJvcGVyIG1hcHBpbmcgaW1wbGVtZW50YXRpb24g
b24gVGFsb3MgcGxhdGZvcm1zLCB1c2luZyBTV19QT1JUU0VMRUNUIHdvdWxkIHJlcXVpcmUgYWRk
aXRpb25hbCBtb2RpZmljYXRpb25zIHRvIHRoZSBsb2dpY2FsMnBoeXNpY2FsIG1hcHBpbmcuCj4K
PiBGb3IgZXhhbXBsZSwgb3RoZXIgcGxhdGZvcm0gZXhjZXB0IFRhbG9zIGltcGxlbWVudGF0aW9u
cyB0aGUgZGF0YS1sYW5lcyBtYXBwaW5nIGZvbGxvd3MgPDAgMSAyIDM+IHNlcXVlbmNlLgo+IEEg
cHJvcGVyIGZsaXAgb3BlcmF0aW9uIHNob3VsZCBwcm9kdWNlIDwzIDIgMSAwPiwgd2hpY2ggY2Fu
IGJlIGVxdWl2YWxlbnRseSBhY2hpZXZlZCBlaXRoZXIgdGhyb3VnaCBEUCBkcml2ZXIgY29uZmln
dXJhdGlvbiBvciBQSFkgcG9ydHNlbGVjdC4KPiBCdXQgaW4gdGhlIFRhbG9zIHdoZXJlIHRoZSBp
bml0aWFsIG1hcHBpbmcgaXMgYXJyYW5nZWQgYXMgPDMgMiAwIDE+LCB0aGUgZXhwZWN0ZWQgcG9z
dC1mbGlwIHNlcXVlbmNlIHNob3VsZCBiZSA8MCAxIDMgMj4uCj4gdGhlbiB3aGVuIGFwcGx5aW5n
IFBIWSBTV19QT1JUU0VMRUNUIHNldHRpbmcgMSwgdGhlIFBIWSBvdXRwdXQgYmVjb21lcyA8MSAw
IDIgMz4gd2hpY2ggbWlzbWF0Y2hlcyB0aGUgZXhwZWN0ZWQgcGF0dGVybi4KCkFjay4gVGhhbmtz
IGZvciB0aGUgZGV0YWlsZWQgZXhwbGFuYXRpb24uIFBsZWFzZSBhZGQgc2ltaWxhciB0ZXh0IHRv
CnRoZSBjb21taXQgbWVzc2FnZSwgd2l0aCB0aGUgb25seSBjaGFuZ2U6IHMvVGFsb3MvU002MTUw
LwoKPgo+IFRvIG1haW50YWluIGNyb3NzLXBsYXRmb3JtIGNvbXBhdGliaWxpdHkgYmV0d2VlbiBU
YWxvcyBhbmQgb3RoZXIgcGxhdGZvcm1zLCByZWNvbW1lbmQgdGhlIGZsaXAgaGFuZGxpbmcgYXQg
dGhlIERQIGRyaXZlciBsZXZlbCBzdWNoIGxpa2UgZHBfY2F0YWxvZ19jdHJsX2xhbmVfbWFwcGlu
Z192MjAwIGluIHNtNjE1MC4KPiA+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+IEFkZGl0aW9uYWxseSwg
aWYgaXQgd2VyZSBwbGFjZWQgb24gdGhlIFBIWSBzaWRlLCB0aGUgUEhZIHdvdWxkIG5lZWQgYWNj
ZXNzIHRvIGRwX2xpbmvigJlzIGRvbWFpbiB3aGljaCBjYW4gYWNjZXNzIFJFR19EUF9MT0dJQ0FM
MlBIWVNJQ0FMX0xBTkVfTUFQUElORy4KPiA+Pj4+Pgo+ID4+Pj4+IEkgd2FzIHRoaW5raW5nIGFi
b3V0IGludmVydGluZyB0aGUgU1dfUE9SVFNFTF9WQUwgYml0Lgo+ID4+Pj4+Cj4gPj4+Pj4+IFRo
ZXJlZm9yZSwgd2UgYmVsaWV2ZSB0aGF0IHRoZSAgbWF4X2RwX2xpbmtfcmF0ZSxtYXhfZHBfbGFu
ZXMgYW5kIGxhbmVfbWFwIG1vdmUgdG8gZHBfbGluayBzaWRlIGlzIGJldHRlci4KCi0tIApXaXRo
IGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
