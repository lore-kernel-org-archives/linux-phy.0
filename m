Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00425EE0AC6
	for <linux-phy@archiver.kernel.org>; Sat,  7 Feb 2026 10:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww/0oCvAwuj8XrZ9tKXwaduCt8rMXveLHItWwORA1AY=; b=Y5xoY1Mz/y6bLU
	hKE6OgHURA3qfX1uRbWbR+bLlUPQVAuEE3qteHUj/4/YfNJULPHc+hAs66NjLN14fpVR0pnohTr+n
	W5c1UytxV0BxJpAUQDaZvE+ZwkhEStd8MkqVsNKorEJyqv3fjvun0rf35QfKOXi0i7D4pZjDrJwO1
	JjgpSwfil+3359rG/G22W2FHSYrbPNa4Q15TmyI2TDYdjbNeSY2yQvma2QXSpd2qRYkCStbGUU+g5
	A+5I4VR77LgEMUY80YEEkOqyXf4fEXmPPxfCovOxpjYe+db7EyAivttuytV9d3ReDklCkohUqKnve
	QTLrKelfNhO06EmkCoaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofSu-0000000CJFY-2wrq;
	Sat, 07 Feb 2026 10:23:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofSr-0000000CJFC-3l4m
	for linux-phy@lists.infradead.org;
	Sat, 07 Feb 2026 10:22:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174ojfq322339
	for <linux-phy@lists.infradead.org>; Sat, 7 Feb 2026 10:22:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4nnJtM4Cl72ggwu6yAdzBObI6Jod1mf4/UeSDtI0Hjs=; b=oHzyaNpAsioUdGvM
	z/g12ONxpzkl+Zbieg2PBX4jfAoRopxDLluYtP8ILCukLjOE+iuzsJxCQhv5jmb3
	v3UL+9nmFMpV9AQg8wxa4N7it52AH8TAqSyLDAIq1pEO9pZ29iuY1Sm8FujgEhxf
	oRkN3edz3uxity7eHMo+bD9PfXm8wYcKWy/ERuW1s5lpOAE6p1TElmXbkFaGTUBB
	nndf/k1FA/n30lCX2OGq6BSLlTen2jsPd3xmtQ2xzwl2IXACy7a+noPJm4vDGEDv
	2pl53vDBj/9Nt68q6SrzUF3VNkHkHucLgfTrho/sIqkI4lnYntpF8L4Wtc1/NdYb
	AVUHMQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xp7gg1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 10:22:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so902690785a.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 02:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770459776; x=1771064576; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4nnJtM4Cl72ggwu6yAdzBObI6Jod1mf4/UeSDtI0Hjs=;
        b=UITUWI6uzpUb3oQIUJaNZzRKroGll2zsQWYNIUqnxXkZ/85vsfBsl8EQV24vx3vatp
         ZB+X6Hjw1Xe3IX666njcdbfyjIEyIQIi8cXcq7PVNqQuIsN+lqyhAQMGJQ7Q8C63V9Ug
         Q/o65bz+yREcf/pWAJV73sqZSIOBjM1q1iExXF9ECM5CgrSPAGL7UXC0RZu6RgOomAlI
         W4wevWR3B8SduW0wWA28VE2s1sFXmjlGwjipmWv+2MSdC7xX/cibiU3TwdGcNLuIiOcm
         TmZbMvxErTBv4pn9lDhQguYxhj/Ww/wt03TqNuTXhomk7ycTAw64EXNJfokcxMA/SP/T
         oyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770459776; x=1771064576;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4nnJtM4Cl72ggwu6yAdzBObI6Jod1mf4/UeSDtI0Hjs=;
        b=ot1q6duUhTB/XKADLjvw6MIEmfzHZQPKjdJ4gbVvRg0dcK605WdjT/dJnN/B1YgcM9
         GImALapP9rSncaGo7HkRnIqnfCjfA6rpr5RtLM5EJiBH7kR/D4a4tNJVJ/azxB35PeA0
         0Qw+PSHt1KewRwZxcvzTWH83vSanV91XwM+ZNpykskgqcH7C+6p+rzNEXFSuBhkQFt3k
         tYKAzn6fX5Us2BY9fdYkxVytb18iE5hre34sc9V9wflAKqBjR7hRknUO4QvxHQd6X4AY
         z3WtCbgJfacfoSFsz0kQf7NeMufLvwtzy7APjKqxNRQIlLrZzSYKa6vHzzh7NjEY4msu
         KS6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU71qjR3BOMOq7y/OZCNeWPkQ0+57SPn1eGJrQZk7RiICVWig484ORtchbAithtsGsKwpG/FLLLtdg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlpwbna6xSAg8OFiBLCFiNxaCUnLLgzsrNi8OTBpeJNWtb1Qnu
	DM6pN3L9asL/5DVIGh3LQ4PIp03PikMLY9zrcUszZ7otfkTI8UDaJF+XgWlGJtvKAoTBPPelWq0
	7LaUK5oneQfAYM+RaSlnJLg/7DoW+aFcIzXHAQ1jysI9f21QiiM+JBLuVu132uWyAcrRq
X-Gm-Gg: AZuq6aID0u0B84orb4UDjy3e1DfmC/PPAElhryB48PatDTd/9bkRjB3/d3Tp/1M2Ibp
	WEjuP/t4uNLYdvm15osQFiLrelmqLrJ9wrYBAGItKZVjZe44jS88qGUMIh9rAUPQIHvBCybC9HP
	gWMdhE+6iHLjEX+/Y0aMCg5CPJhZp1GjdcuXKFUKCrAVAuRW8at842wYFzbm64HU4U9/8Of+K00
	DRm4e4jJZoWmMbgeBu3CwA+2Q4RAnWC0VydSw6Ux3FjY88mwRgSUev072J3jxEtJ/2gjrFDgpdB
	ZML8wPlBI/VZN8rU2fX2XttUbj78LD5yHNPRcbH+rdb1u5km9a69vvsyNZOaq+SEBOP38GRm7vy
	yXFZWEAZwr6EzK/qbpVonSOKDTJU061k9eD5iCUJnoDISFSmTnou21zyStC7AFwsGs7Foi5o+dN
	YGcZGXU13VgKbBBrlrQjWSgvw=
X-Received: by 2002:a05:620a:3f85:b0:8c7:7a3:501c with SMTP id af79cd13be357-8caf13078a8mr733326885a.52.1770459775919;
        Sat, 07 Feb 2026 02:22:55 -0800 (PST)
X-Received: by 2002:a05:620a:3f85:b0:8c7:7a3:501c with SMTP id af79cd13be357-8caf13078a8mr733326385a.52.1770459775466;
        Sat, 07 Feb 2026 02:22:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e21b40sm1225094e87.73.2026.02.07.02.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:22:53 -0800 (PST)
Date: Sat, 7 Feb 2026 12:22:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo
 PHY configuration values
Message-ID: <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: BhFpbFSuO6v3zsUEJzfWH702vKSmdQZC
X-Proofpoint-GUID: BhFpbFSuO6v3zsUEJzfWH702vKSmdQZC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDA4MiBTYWx0ZWRfXwAQgn81Ec3YZ
 KTZp9bN9bqFcLtbGIjL3JzOBcgMBaItqTozeYvc8xGrXuC7chNU386tqmn3SPZ3U+2NZ9K+v+uV
 n5fISUeXSeLhuUxrWXDcNEd4Ehi5ZEVg5qX62nG1w2H3WlrPIMJRO18U5QLsZ3lOY+5X7y8knFC
 Kdwbl9tycATdslgJbzbEXdN/Ai+AmpIpNnZH7jtVj1CWGnlxSdXhyILOd5YChhM3jx9amVuBqky
 G30BUdlWsuK5IrTYVOA4PGItFAoVpzBl84DjRzCgsVK6i6qjRIjhyDWi83eSpfgywtRxofGtcei
 ZldVNEzNfVfpGM8CZm5ZwqXdvbCZMlPHr+4SwwknDehoc/rv9NHL/ACZOS9JGF7BjgwBJlnyCLn
 oLbkUlAWk61EHviQALnXWul5EYHFjMvYOCZqixOHH26D17hnAifUD0comy++D1lqX/uuhtvJyDT
 QtAfV6n7gru5RUjPsiQ==
X-Authority-Analysis: v=2.4 cv=LvafC3dc c=1 sm=1 tr=0 ts=69871281 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=nVYv5r8-tx1K4UDvUOAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602070082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_022257_967071_EE6BCFDD 
X-CRM114-Status: GOOD (  20.59  )
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

T24gVGh1LCBGZWIgMDUsIDIwMjYgYXQgMDU6MjA6NTNQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IEFjY29yZGluZyB0byB0aGUgY3VycmVudCBIUEcgc2V0dGluZ3MsIG1vc3QgZURQL0RQ
IGNvbWJvIFBIWXMgY2FuIHJldXNlIHRoZQo+IHNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCj4g
RFAgbW9kZe+8mgo+IAktc2E4Nzc1cC9zYzcyODAvc2M4MjgweHAveDFlODAxMDAKPiAJLWdseW11
cgo+IGVEUCBtb2RlKGxvdyB2ZGlmZik6Cj4gCS1nbHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4
MDEwMAo+IAktc2M3MjgwCj4gVGhlIGN1cnJlbnQgZHJpdmVyIHN0aWxsIGtlZXBzIG11bHRpcGxl
IHZlcnNpb25zIG9mIHRoZXNlIHRhYmxlcyBhbmQKPiBkb2Vzbid0IGZ1bGx5IHN1cHBvcnQgZXZl
cnkgY29tYm8gUEhZIG1vZGUuIFRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUKClNlZSBEb2N1bWVudGF0
aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCwgIlRoaXMgcGF0Y2giLgoKPiByZWR1
bmRhbnQgY29uZmlncyBhbmQga2VlcHMgb25seSB0aGUgc2V0cyB3ZSBhY3R1YWxseSB1c2UsIG1h
dGNoaW5nIHRoZQo+IHBsYXRmb3JtcyBsaXN0ZWQgYWJvdmUuCgpTaG91bGQgaXQgYmUgY29tYmlu
ZWQgd2l0aCB0aGUgM3JkIHBhdGNoPyBUaGVyZSB5b3Ugc29ydCBvdXQgYWxsIHRoZQp0YWJsZXMs
IGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gcmV2aWV3IGFsbCBwcm9ncmFtbWluZyB0b2dldGhlci4K
Cj4gCj4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxj
b21tLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgfCA0
MSArKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1lZHAuYwo+IGluZGV4IDEzZmVhYjk5ZmVlYy4uMTBjYmI3ZDlhOGEwIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiBAQCAtMTE2LDE3ICsxMTYsMTcgQEAgc3Ry
dWN0IHFjb21fZWRwIHsKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnJf
cmJyWzRdWzRdID0gewo+IC0JeyAweDA4LCAweDBmLCAweDE2LCAweDFmIH0sCj4gKwl7IDB4MDcs
IDB4MGYsIDB4MTYsIDB4MWYgfSwKPiAgCXsgMHgxMSwgMHgxZSwgMHgxZiwgMHhmZiB9LAo+ICAJ
eyAweDE2LCAweDFmLCAweGZmLCAweGZmIH0sCj4gIAl7IDB4MWYsIDB4ZmYsIDB4ZmYsIDB4ZmYg
fQo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHU4IGRwX3ByZV9lbXBfaGJyX3Jicls0XVs0XSA9
IHsKPiAtCXsgMHgwMCwgMHgwZCwgMHgxNCwgMHgxYSB9LAo+ICsJeyAweDAwLCAweDBlLCAweDE1
LCAweDFhIH0sCj4gIAl7IDB4MDAsIDB4MGUsIDB4MTUsIDB4ZmYgfSwKPiAgCXsgMHgwMCwgMHgw
ZSwgMHhmZiwgMHhmZiB9LAo+IC0JeyAweDAzLCAweGZmLCAweGZmLCAweGZmIH0KPiArCXsgMHgw
NCwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3QgdTggZHBfc3dp
bmdfaGJyMl9oYnIzWzRdWzRdID0gewo+IEBAIC0xNTgsNyArMTU4LDcgQEAgc3RhdGljIGNvbnN0
IHU4IGVkcF9zd2luZ19oYnJfcmJyWzRdWzRdID0gewo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0
IHU4IGVkcF9wcmVfZW1wX2hicl9yYnJbNF1bNF0gPSB7Cj4gLQl7IDB4MDUsIDB4MTIsIDB4MTcs
IDB4MWQgfSwKPiArCXsgMHgwNSwgMHgxMSwgMHgxNywgMHgxZCB9LAo+ICAJeyAweDA1LCAweDEx
LCAweDE4LCAweGZmIH0sCj4gIAl7IDB4MDYsIDB4MTEsIDB4ZmYsIDB4ZmYgfSwKPiAgCXsgMHgw
MCwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4gQEAgLTE3MiwxMCArMTcyLDEwIEBAIHN0YXRpYyBjb25z
dCB1OCBlZHBfc3dpbmdfaGJyMl9oYnIzWzRdWzRdID0gewo+ICB9Owo+ICAKPiAgc3RhdGljIGNv
bnN0IHU4IGVkcF9wcmVfZW1wX2hicjJfaGJyM1s0XVs0XSA9IHsKPiAtCXsgMHgwOCwgMHgxMSwg
MHgxNywgMHgxYiB9LAo+IC0JeyAweDAwLCAweDBjLCAweDEzLCAweGZmIH0sCj4gLQl7IDB4MDUs
IDB4MTAsIDB4ZmYsIDB4ZmYgfSwKPiAtCXsgMHgwMCwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4gKwl7
IDB4MGMsIDB4MTUsIDB4MTksIDB4MWUgfSwKPiArCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9
LAo+ICsJeyAweDBlLCAweDE0LCAweGZmLCAweGZmIH0sCj4gKwl7IDB4MGQsIDB4ZmYsIDB4ZmYs
IDB4ZmYgfQo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX2VkcF9zd2luZ19w
cmVfZW1waF9jZmcgZWRwX3BoeV9zd2luZ19wcmVfZW1waF9jZmcgPSB7Cj4gQEAgLTE5MywyNyAr
MTkzLDYgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjRbNF0gPSB7Cj4g
IAkweDAxLCAweDAxLCAweDAyLCAweDAwLAo+ICB9Owo+ICAKPiAtc3RhdGljIGNvbnN0IHU4IGVk
cF9wcmVfZW1wX2hicl9yYnJfdjVbNF1bNF0gPSB7Cj4gLQl7IDB4MDUsIDB4MTEsIDB4MTcsIDB4
MWQgfSwKPiAtCXsgMHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9LAo+IC0JeyAweDA2LCAweDExLCAw
eGZmLCAweGZmIH0sCj4gLQl7IDB4MDAsIDB4ZmYsIDB4ZmYsIDB4ZmYgfQo+IC19Owo+IC0KPiAt
c3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1wX2hicjJfaGJyM192NVs0XVs0XSA9IHsKPiAtCXsg
MHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAo+IC0JeyAweDBiLCAweDE1LCAweDE5LCAweGZmIH0s
Cj4gLQl7IDB4MGUsIDB4MTQsIDB4ZmYsIDB4ZmYgfSwKPiAtCXsgMHgwZCwgMHhmZiwgMHhmZiwg
MHhmZiB9Cj4gLX07Cj4gLQo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3By
ZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSA9IHsKPiAtCS5zd2luZ19o
YnJfcmJyID0gJmVkcF9zd2luZ19oYnJfcmJyLAo+IC0JLnN3aW5nX2hicjNfaGJyMiA9ICZlZHBf
c3dpbmdfaGJyMl9oYnIzLAo+IC0JLnByZV9lbXBoYXNpc19oYnJfcmJyID0gJmVkcF9wcmVfZW1w
X2hicl9yYnJfdjUsCj4gLQkucHJlX2VtcGhhc2lzX2hicjNfaGJyMiA9ICZlZHBfcHJlX2VtcF9o
YnIyX2hicjNfdjUsCj4gLX07Cj4gLQo+ICBzdGF0aWMgY29uc3QgdTggZWRwX3BoeV9hdXhfY2Zn
X3Y1W0RQX0FVWF9DRkdfU0laRV0gPSB7Cj4gIAkweDAwLCAweDEzLCAweGE0LCAweDAwLCAweDBh
LCAweDI2LCAweDBhLCAweDAzLCAweDM3LCAweDAzLCAweDAyLCAweDAyLCAweDAwLAo+ICB9Owo+
IEBAIC01NjQsNyArNTQzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX2VkcF9waHlfY2Zn
IHNhODc3NXBfZHBfcGh5X2NmZyA9IHsKPiAgCS5pc19lZHAgPSBmYWxzZSwKPiAgCS5hdXhfY2Zn
ID0gZWRwX3BoeV9hdXhfY2ZnX3Y1LAo+ICAJLnZjb19kaXZfY2ZnID0gZWRwX3BoeV92Y29fZGl2
X2NmZ192NCwKPiAtCS5zd2luZ19wcmVfZW1waF9jZmcgPSAmZWRwX3BoeV9zd2luZ19wcmVfZW1w
aF9jZmdfdjUsCj4gKwkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2Vt
cGhfY2ZnLAo+ICAJLnZlcl9vcHMgPSAmcWNvbV9lZHBfcGh5X29wc192NCwKPiAgfTsKPiAgCj4g
QEAgLTk0NCw3ICs5MjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJfb3BzIHFjb21f
ZWRwX3BoeV9vcHNfdjggPSB7Cj4gIHN0YXRpYyBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBnbHlt
dXJfcGh5X2NmZyA9IHsKPiAgCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y4LAo+ICAJLnZj
b19kaXZfY2ZnID0gZWRwX3BoeV92Y29fZGl2X2NmZ192OCwKPiAtCS5zd2luZ19wcmVfZW1waF9j
ZmcgPSAmZWRwX3BoeV9zd2luZ19wcmVfZW1waF9jZmdfdjUsCj4gKwkuc3dpbmdfcHJlX2VtcGhf
Y2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAo+ICAJLnZlcl9vcHMgPSAmcWNvbV9l
ZHBfcGh5X29wc192OCwKPiAgfTsKPiAgCj4gCj4gLS0gCj4gMi40My4wCj4gCgotLSAKV2l0aCBi
ZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
