Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26E0FC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 00:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhzcIooVQiCbo8fVwrCND6TySdrfHQTaoH4tFWuY8zQ=; b=xuNAT6CxMoMhU2
	7rwEnfKWYhO+OMPWq89pVfUcYdh6mZoO8CF74YHxfHC/uDRLs+lK+yG0ac9s/qx6jfS3KmQgemy6S
	eDqR+lBudHX+vqy9c0wNtcX3J2Uv8qOxwKMWJedlqPPYuctYghCG01yDS8UlyUZAfrPRco6V+khVX
	/D+aAdfsTS3AMCKM8//3xA45n+yptx0Tm81BtY2vQAfUR2mSuZdWDOrZNxa/ILtNWyNkMXNOfhQlT
	IQHRzOk7zaDxbT4gr6j4Y9fgz9eW8FJLixmkLlNi4wXZuOLjQWuzpxUnW87xK+7wn04gQgb7aTZID
	mDCby/ABXy6girafhWqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74VH-002A0V-GK; Fri, 01 Jul 2022 00:27:23 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74VC-0029y1-SI
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 00:27:22 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220701002707epoutp022cd0d2b1526fb012cc4b9d225c4e6159~9jPY-82J42343623436epoutp02b
	for <linux-phy@lists.infradead.org>; Fri,  1 Jul 2022 00:27:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220701002707epoutp022cd0d2b1526fb012cc4b9d225c4e6159~9jPY-82J42343623436epoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1656635227;
	bh=+Uyb+Sk9Z1bPH9TkanCr784yxeep/5h/CN3g6+QH9Ek=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=vNSqZrunEY9HMqIO8YinpsThIhnsb5J2WYapwt/ztW7i/Y707AsHUYZh1WXBRyUsU
	 CQ6Z6LBtGEJCcZhBqHOLcAQqGRohNO4ehSoie5gKKunpP/3Mfr0kWZmc98WgapOL4k
	 BzuwfD3ZHFN8SrWXwZEqhqbo7La36nOK4WLJ5UWU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas1p1.samsung.com (KnoxPortal) with ESMTP id
	20220701002706epcas1p113cb9a3baabc0f597413b32f79379797~9jPYWUx-u3255832558epcas1p1z;
	Fri,  1 Jul 2022 00:27:06 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.36.132]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LYwxj1ykvz4x9QH; Fri,  1 Jul
	2022 00:27:05 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
	epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
	45.50.09657.95F3EB26; Fri,  1 Jul 2022 09:27:05 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20220701002704epcas1p25ab6878a9c21a75aab727dd49171859e~9jPWuQnF22489424894epcas1p2M;
	Fri,  1 Jul 2022 00:27:04 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220701002704epsmtrp1fe3bfe1e96cb9cd283cc616bcab41096~9jPWtM00O2207222072epsmtrp1X;
	Fri,  1 Jul 2022 00:27:04 +0000 (GMT)
X-AuditID: b6c32a35-71dff700000025b9-c7-62be3f59b291
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	F1.A7.08905.85F3EB26; Fri,  1 Jul 2022 09:27:04 +0900 (KST)
Received: from inkidae001 (unknown [10.113.221.213]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220701002702epsmtip19324f07764b919acde6d7a9e7f559267~9jPUYjXaT3142831428epsmtip12;
	Fri,  1 Jul 2022 00:27:02 +0000 (GMT)
From: =?UTF-8?B?64yA7J246riwL1RpemVuIFBsYXRmb3JtIExhYihTUikv7IK87ISx7KCE7J6Q?=
	<inki.dae@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
Cc: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>, "'Seung-Woo
 Kim'" <sw0312.kim@samsung.com>, "'Kyungmin Park'"
	<kyungmin.park@samsung.com>, "'David Airlie'" <airlied@linux.ie>, "'Daniel
 Vetter'" <daniel@ffwll.ch>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski+dt@linaro.org>, "'Alim Akhtar'"
	<alim.akhtar@samsung.com>, "'Kishon Vijay Abraham I'" <kishon@ti.com>,
	"'Vinod	Koul'" <vkoul@kernel.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
In-Reply-To: <20220630231809.GA3514176-robh@kernel.org>
Subject: RE: [PATCH 1/2] drm/exynos: MAINTAINERS: move Joonyoung Shim to
 credits
Date: Fri, 1 Jul 2022 09:27:01 +0900
Message-ID: <003301d88ce1$49e82330$ddb86990$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJghn6p1dSqDKoivxgEEVwDdxk9yAKXUcLlA0cSKuMCrijEvqwUTSIg
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmrm6k/b4kg19beS16z51ksngwbxub
	xf9tE5kt5h85x2px5et7NosLT3vYLPpePGS22Pt6K7vF2aY37BabHl9jtbi8aw6bxYRV31gs
	Zpzfx2Txf88OdosZk1+yWey8c4LZQcBj77cFLB6bVnWyedy5tofNY/u3B6we97uPM3lsXlLv
	0bdlFaPH8RvbmTw+b5IL4IzKtslITUxJLVJIzUvOT8nMS7dV8g6Od443NTMw1DW0tDBXUshL
	zE21VXLxCdB1y8wBekNJoSwxpxQoFJBYXKykb2dTlF9akqqQkV9cYquUWpCSU2BaoFecmFtc
	mpeul5daYmVoYGBkClSYkJ3R9XIZW8E7yYqjW9exNzA2SXYxcnJICJhINK56w9TFyMUhJLCD
	UeL0pp1QzidGie9/epkhnG+MEt0NT5hhWratm8IOkdjLKHF7+XJWCOclo8Sm/SvBqtgE0iXu
	djcwgdgiAqoSTbMesIAUMQv8ZJGYevkZK0iCU8BcorftLyOILSwQJPHu318WEJtFQEXi26kV
	YM28ApYSp88sY4WwBSVOznwCVsMsoC2xbOFrqJMUJH4+hagREXCTOPD1AytEjYjE7M42sB8k
	BL5wSKw9sYgNosFFYsW8O6wQtrDEq+Nb2CFsKYmX/W3sEA2TGSXuXF/BAuHMYJQ4/PM6I0SV
	scT+pZOBzuMAWqEpsX6XPkRYUWLn77mMEJv5JN597WEFKZEQ4JXoaBOCKFGSOHbxBtQUCYkL
	SyayTWBUmoXkt1lIfpuF5IdZCMsWMLKsYhRLLSjOTU8tNiwwhEd4cn7uJkZwKtcy3cE48e0H
	vUOMTByMhxglOJiVRHjZ5u1NEuJNSaysSi3Kjy8qzUktPsRoCgzticxSosn5wGySVxJvaGJp
	YGJmZGxiYWhmqCTOu2ra6UQhgfTEktTs1NSC1CKYPiYOTqkGpoKl0csnmryf479Pa/lDH8ac
	WNd3fXb5Dk//sP+uq97dayN9Yt68GSkJr0I2cH5bfErNXjnp+x43hX9OfZExhYpify4YPFD+
	wbs4cdYz+5y0Xcs4Ejplb38r/BEeazb5+sWV4p/fqLiWPLEWnnMnpGGVnYJr1sUiLrWXC1bJ
	PtMJXfQ2LiLx+ba86QyqhoHHtd7tdf3aunnX3vTXQU+0F1qf335s1nPTlE3zVnmuF+/5yuTE
	8LIg89+jg+/+qh8P39ta86R2f95B/t2aSgn7N/xo3nzkxok35taLhYQWqf1b9n5+bNB9mYnq
	8ifW3F/1QnymRiOnVsS2JOaZbWYJJTu4XF/LctRUlTMw8145zKjEUpyRaKjFXFScCACFmc0g
	bgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPIsWRmVeSWpSXmKPExsWy7bCSnG6E/b4kgy//VC16z51ksngwbxub
	xf9tE5kt5h85x2px5et7NosLT3vYLPpePGS22Pt6K7vF2aY37BabHl9jtbi8aw6bxYRV31gs
	Zpzfx2Txf88OdosZk1+yWey8c4LZQcBj77cFLB6bVnWyedy5tofNY/u3B6we97uPM3lsXlLv
	0bdlFaPH8RvbmTw+b5IL4IzisklJzcksSy3St0vgylh9Rqtgt3DFhsc1DYynBboYOTkkBEwk
	tq2bwt7FyMUhJLCbUeLzpMmMXYwcQAkJiS1bOSBMYYnDh4tByoUEnjNKPGxUB7HZBFIlbnz6
	yA5iiwioSjTNesACMoZZoJlVYuvp08wQDW8ZJe40BIPYnALmEr1tfxlBbGGBAImdR76CNbMI
	qEh8O7WCCcTmFbCUOH1mGSuELShxcuYTFhCbWUBbovdhKyOMvWzha2aI+xUkfj6FqBcRcJM4
	8PUDK0SNiMTszjbmCYzCs5CMmoVk1Cwko2YhaVnAyLKKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0
	L10vOT93EyM4jrU0dzBuX/VB7xAjEwfjIUYJDmYlEV62eXuThHhTEiurUovy44tKc1KLDzFK
	c7AoifNe6DoZLySQnliSmp2aWpBaBJNl4uCUamBye+R75lLkwUuKMUfP232dtXdeqYvGzcQy
	7psrOBjT3s+c0Jhl9u+E0KYVz1b82XlrC8OxvW2fXmuIyd4S8npkeb13w6EjtaXn3U0Wzjdq
	jJt4Ye77B6fSwn6c/TbxcuGpCQZXFA8E7JwtyLZj6oWEbNO7X59/TA38dlaDSfLqj5Vicyo1
	eSy1Zknc0TwlVKMeJ2DAkf1H5uf/2FfTD63ViQj2qf61Re9V2By5vYeyUtNcvK9rC6yq/dpS
	O+2nApPpqylX1jkfb4z49nbf/8ap6i1SzrJfaqqW2pdMd7i1wDtbgnXBkf49nnX+c/4IrQiq
	7GjxyXBhZ3kvd2/jDufPz90ffHuf9vrq3HbmqHd/uJRYijMSDbWYi4oTAR7STMxSAwAA
X-CMS-MailID: 20220701002704epcas1p25ab6878a9c21a75aab727dd49171859e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220626163558epcas1p3f525431b9fb237bd420ad1453daaf1ac
References: <CGME20220626163558epcas1p3f525431b9fb237bd420ad1453daaf1ac@epcas1p3.samsung.com>
	<20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
	<0de401d88c38$23aeb8e0$6b0c2aa0$@samsung.com>
	<20220630231809.GA3514176-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_172719_280703_748FF878 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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

SGkgUm9iLAoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IFJvYiBIZXJyaW5n
IFttYWlsdG86cm9iaEBrZXJuZWwub3JnXQo+IFNlbnQ6IEZyaWRheSwgSnVseSAxLCAyMDIyIDg6
MTggQU0KPiBUbzog77+977+977+9zrHvv70vVGl6ZW4gUGxhdGZvcm0gTGFiKFNSKS/vv73vvLrv
v73vv73vv73vv70gPGlua2kuZGFlQHNhbXN1bmcuY29tPg0KPiBDYzogJ0tyenlzenRvZiBLb3ps
b3dza2knIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+OyAnU2V1bmctV29vIEtpbScN
Cj4gPHN3MDMxMi5raW1Ac2Ftc3VuZy5jb20+OyAnS3l1bmdtaW4gUGFyaycNCj4gPGt5dW5nbWlu
LnBhcmtAc2Ftc3VuZy5jb20+OyAnRGF2aWQgQWlybGllJyA8YWlybGllZEBsaW51eC5pZT47ICdE
YW5pZWwNCj4gVmV0dGVyJyA8ZGFuaWVsQGZmd2xsLmNoPjsgJ0tyenlzenRvZiBLb3psb3dza2kn
DQo+IDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+OyAnQWxpbSBBa2h0YXInDQo+
IDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT47ICdLaXNob24gVmlqYXkgQWJyYWhhbSBJJyA8a2lz
aG9uQHRpLmNvbT47DQo+ICdWaW5vZCBLb3VsJyA8dmtvdWxAa2VybmVsLm9yZz47IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRyaS0NCj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLQ0KPiBrZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZzsgbGludXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnOyBsaW51eC0N
Cj4gcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzJdIGRy
bS9leHlub3M6IE1BSU5UQUlORVJTOiBtb3ZlIEpvb255b3VuZyBTaGltDQo+IHRvIGNyZWRpdHMN
Cj4gDQo+IE9uIFRodSwgSnVuIDMwLCAyMDIyIGF0IDAxOjE2OjE0UE0gKzA5MDAsIO+/ve+/ve+/
vc6x77+9L1RpemVuIFBsYXRmb3JtIExhYihTUikv77+9DQo+IO+8uu+/ve+/ve+/ve+/vSB3cm90
ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJv
bTogS3J6eXN6dG9mIEtvemxvd3NraSBbbWFpbHRvOmtyenlzenRvZi5rb3psb3dza2lAbGluYXJv
Lm9yZ10NCj4gPiA+IFNlbnQ6IE1vbmRheSwgSnVuZSAyNywgMjAyMiAxOjMzIEFNDQo+ID4gPiBU
bzogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1bmcuY29tPjsgU2V1bmctV29vIEtpbQ0KPiA+ID4g
PHN3MDMxMi5raW1Ac2Ftc3VuZy5jb20+OyBLeXVuZ21pbiBQYXJrDQo+IDxreXVuZ21pbi5wYXJr
QHNhbXN1bmcuY29tPjsgRGF2aWQNCj4gPiA+IEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT47IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD47IFJvYiBIZXJyaW5nDQo+ID4gPiA8cm9iaCtk
dEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA+ID4gPGtyenlzenRvZi5rb3ps
b3dza2krZHRAbGluYXJvLm9yZz47IEFsaW0gQWtodGFyDQo+ID4gPGFsaW0uYWtodGFyQHNhbXN1
bmcuY29tPjsNCj4gPiA+IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+OyBW
aW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPjsNCj4gPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4gPiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
OyBsaW51eC0NCj4gPiA+IHNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcNCj4gPiA+IENjOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmc+DQo+ID4gPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0v
ZXh5bm9zOiBNQUlOVEFJTkVSUzogbW92ZSBKb29ueW91bmcgU2hpbQ0KPiB0bw0KPiA+ID4gY3Jl
ZGl0cw0KPiA+ID4NCj4gPiA+IEVtYWlscyB0byBKb29ueW91bmcgU2hpbSBib3VuY2UgKCI1NTAg
NS4xLjEgUmVjaXBpZW50IGFkZHJlc3MgcmVqZWN0ZWQ6DQo+ID4gPiBVc2VyIHVua25vd24iKSwg
c28gbW92ZSBoaW0gdG8gY3JlZGl0cyBmaWxlLg0KPiA+ID4NCj4gPg0KPiA+IEFwcGxpZWQuDQo+
IA0KPiBCb3RoIHBhdGNoZXMgb3IganVzdCB0aGlzIG9uZT8NCg0KQWgsIGRpZG4ndCBjaGVjayBp
dC4gSSB3aWxsIHRha2Ugb3RoZXIgb25lIHRvby4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHRoZXJl
IGlzIGFueSBwcm9ibGVtLg0KDQpUaGFua3MsDQpJbmtpIERhZQ0KDQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
