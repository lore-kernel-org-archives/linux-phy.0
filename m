Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55207D41C3B
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 14:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK+wfaBDcu/gO4/yUrFxaDLaRmYJjKCfqCUo6+OqAV4=; b=4+u+5y8wwysyep
	D4F0KA8inFo1RvkDJsYfJw0VjFjUD2j+82NP8yxHi+9PR8HL6XLJjhk9NDzWZlkQkqr3294c1dgX+
	CDJQ9rSjr1WxMVbMXOTNO8ibctql0+dQQyxYnt9FOorFOdrWIwbtQohDKFG8DqCDpkl2PBpPwRYs5
	qELIvf5XiU8lHc3bgfQjdqVzh7URl8KKCHjGIp9Us02sH0imZNIxTUqVW50BilngYcb4YDVNrr3hK
	SByG124lN7ZLrW1hIouydFeQ0nYYOHkozYPDZfeacccv6oerfdT8UATwlp156smyO88AU+YXVcM2u
	OWvQ6R+Zm/ZHfssxcXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThVQ-0000000GiYk-4Buf;
	Thu, 11 Dec 2025 14:18:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThVO-0000000GiYL-0oLt
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 14:18:55 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBEGJRx1412654
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:18:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jYZLtnDIBe6UB8fryKWEukvFJ81R6dqUxJIBsQ+Dkp4=; b=BuJJ+PQt02s0oJx+
	c2MFszQqv1A3FoOTEM9sUb9V7dsXPs0k4a5Sap3OE73rH8wTo09a37R0SiR+vKwm
	7nfe7cOeTt2yZQIiUapDYIn/HutAhb5WRf2e9bo4ISW873pYan8pCNOy0KNsDTMm
	H6c8ens6+qbZ/3qEmlCHC+uXwKqNgyymSnrU7TvhCXyF1nl//E7h40MarZjcqJf6
	Kk64druSoB1n8JkQbO8TtWjEFzLb9VyKPAB/ZzFTzrgmoJyu6yA+6vMp20IatNYZ
	sN8GpQIKOkD8I/wdMufoaRWgpbonaWa4w1+8RTBdsAr3oDwk3XD3fMkvtq2alI+y
	VHRlKg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aym5827un-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:18:53 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a9fb6fcc78so73985b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 06:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765462732; x=1766067532; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jYZLtnDIBe6UB8fryKWEukvFJ81R6dqUxJIBsQ+Dkp4=;
        b=DU9d61Q4Wuvcx3o0smeicfEEcgLopodTVXa8j2geURTEE0/FUwDUl/DivSc/p3eSv6
         3U6nymvwEXEJp7HzWra8Wxs1/8qWUSEnzvEsIEWvHgQB+PF0Ww/zTbruQ5kG1UNbrIoq
         PJroli3aAILbye1/EUkFukc5gUorJqUeJeIT3OAgEfuyOYGNtVfzb4xKhYaeV3CapXzo
         QS0A8yJKhXDRxaqBH1AE669u+wRpSp9sJz1ZtfLlWban96Vy1Vujt36n/Bumej8BDWXJ
         c3LxD1MgAWJladiYtjWGH8XlHLn/jT4f2w5/zntNW64Y/qxBYT5oYYLPzdr1+YQ99ybt
         4qYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765462732; x=1766067532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jYZLtnDIBe6UB8fryKWEukvFJ81R6dqUxJIBsQ+Dkp4=;
        b=RjokJr4ICihEju0/VSvU7q53eoJ95KbyBKPYZD702p7AdktAYQyoaIOtPwIBymr5gI
         mbjjO4DKGZ20d6T2G8FXNEEJ+rcvV77gik0w+qcv/0UvL3KKCNrp3XWZ/eCY8dwwtmwE
         9LvLMjqe0X4NXw80JckZiREYgRZHGMe3orWxmyyN+qm0696AZlgV53lzKT7nTSWi7MzC
         z/ZCC1R2/wQ4TsWoECeLZzHD1LViFtSZGaOoJyIOl63B9y9I1Rn1Vi8mOwjT6xxD+SzA
         iXZxKFuHLZxhsuJhTKOWlGWinqBHkfR3/6Qk/ZVCo8SY11temph9bSED5tS3dxRS0O0/
         zbrA==
X-Forwarded-Encrypted: i=1; AJvYcCWqc5p5QhdXEqDjoR5HXgpoEvzGm5fHHM8lPQlAhdS2ENYJmyydrPcnDYbg5U6GRlSRWNJ3FFEQCQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOiP8DYaVuqIWL1snIM7dMvy7it11U9BI6MDijdQHZ5ZZYXKxy
	pkS4eXejFPd//0R5fdEAFsMdHheMvhvmAri0ue8qUR+6T1QH1EURVS/0XR8zBWTUzK84hPLV/Mz
	73RypVNh9TFqNO5MZpcV7/W+Lo2O4lMUpWyG9mjxPalZnKR0491njOT4fjof/8zVrsF5uZrZ0lQ
	X/u/nbRg2xTpgFVRjuLUYqdq7gRWnngmD0+Kl+uNo1QmU=
X-Gm-Gg: AY/fxX6Wzt6nNYXYBIaqlQBtzlN8QbtQY7nTGDDEP/FGar+B43Q1PCMcKN7AyTu6P6B
	4VEBeqO36jNPwleQLoyYBPG0xM14LM9EwP6EdEDdubgOy9URfgywxEOWcy3Ud6a66Sej8qFD8nR
	b0fufMjBTEQO1BRQz7RBUjSCj+NDSXO/2c1c38YQXr08YE6vxuwGGhfWQMjeRdxNufZtGUVTPVQ
	Yci8Iqa
X-Received: by 2002:a17:90b:2d45:b0:349:30b4:6365 with SMTP id 98e67ed59e1d1-34a7288be9amr5718444a91.27.1765462731991;
        Thu, 11 Dec 2025 06:18:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwvpG48xYstpfHh3GhJ2BS/7o7bI2+NbKM9Dka4IpfhS7AKsTOm/qvR3udIlAZvNo96akAQcj2bvEPawnq9XU=
X-Received: by 2002:a17:90b:2d45:b0:349:30b4:6365 with SMTP id
 98e67ed59e1d1-34a7288be9amr5718412a91.27.1765462731396; Thu, 11 Dec 2025
 06:18:51 -0800 (PST)
MIME-Version: 1.0
References: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com>
 <h3jx5drjfg4xa56lrbdu3xxic53hez35jotkrznozawjjljfh3@kwo6hdccfkus> <CAFEp6-3vvudXm14QMtP=nD=N5Ur415JLaNF7HnBkSfiZMa_WzA@mail.gmail.com>
In-Reply-To: <CAFEp6-3vvudXm14QMtP=nD=N5Ur415JLaNF7HnBkSfiZMa_WzA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 16:18:39 +0200
X-Gm-Features: AQt7F2pFqX0ckYAuVwr92kRkqudgW_daYj3_mvQmOzihBa_cb4jK4v0y7f4ONAw
Message-ID: <CAO9ioeWemDY2CxfRRH=ZUgHO4DX-UCQr7Q8+PPyBbp2JFkk5Dg@mail.gmail.com>
Subject: Re: [PATCH v2] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
X-Proofpoint-GUID: K-UVzfNd-msH1jCd4S2L1odLPkQfNyJ2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDExMyBTYWx0ZWRfX3b10OiD+ujph
 kD6cvyHq8Q7Hdhwvfxsl6gmOnQz3x8XFuBeNMXcg9BLTZ2eSjTLtwDOa6htyCivolSCRnibAP85
 IEgLZ1ij5or36E/d1+Ge4WVEedffXqVWnVSREvDfA3vNjhMZ9HRxj2DXUg7dFtIsp4i7XhdXKA3
 WGlDckH3N1XdkKbmhQLEGs5Zb14ohoOYvO3BqSrUNl5lS+at7bOipTylCC8dXPO77aZi4BfhlaO
 oDLv71wvuNh4shjfj08DN21wvED6QJhS3Bzte7qKsOhfpc9AizgCEE1nfw3cjXNucUfnfr+YZFB
 VzdSxG629HIbTHr8THMYytIG0GA8eUERr3mEeP79Oriyx9/sCT5sCAZggsIs+Ui0ylDMHw6BkvW
 6t9cyr2h63kK5CEK6SHbC4GMwtMddg==
X-Authority-Analysis: v=2.4 cv=FYU6BZ+6 c=1 sm=1 tr=0 ts=693ad2cd cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=Dh82oV3AAIrWe35RTHAA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: K-UVzfNd-msH1jCd4S2L1odLPkQfNyJ2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_061854_369246_B21B83D0 
X-CRM114-Status: GOOD (  27.38  )
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

T24gVGh1LCAxMSBEZWMgMjAyNSBhdCAxNjoxMCwgTG9pYyBQb3VsYWluCjxsb2ljLnBvdWxhaW5A
b3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIERlYyAxMSwgMjAyNSBhdCAyOjU3
4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgRGVjIDExLCAyMDI1IGF0IDAyOjQ4OjM2UE0gKzAx
MDAsIExvaWMgUG91bGFpbiB3cm90ZToKPiA+ID4gRW5hYmxpbmcgcnVudGltZSBQTSBiZWZvcmUg
YXR0YWNoaW5nIHRoZSBRUEhZIGluc3RhbmNlIGFzIGRyaXZlciBkYXRhCj4gPiA+IGNhbiBsZWFk
IHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzIHRo
YXQKPiA+ID4gZXhwZWN0IHZhbGlkIGRyaXZlciBkYXRhLiBUaGVyZSBpcyBhIHNtYWxsIHdpbmRv
dyB3aGVyZSB0aGUgc3VzcGVuZAo+ID4gPiBjYWxsYmFjayBtYXkgcnVuIGFmdGVyIFBNIHJ1bnRp
bWUgZW5hYmxpbmcgYW5kIGJlZm9yZSBydW50aW1lIGZvcmJpZC4KPiA+ID4gVGhpcyBjYXVzZXMg
YSBzcG9yYWRpYyBjcmFzaCBkdXJpbmcgYm9vdDoKPiA+ID4KPiA+ID4gYGBgCj4gPiA+IFVuYWJs
ZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFk
ZHJlc3MgMDAwMDAwMDAwMDAwMDBhMQo+ID4gPiBbLi4uXQo+ID4gPiBDUFU6IDAgVUlEOiAwIFBJ
RDogMTEgQ29tbToga3dvcmtlci8wOjEgTm90IHRhaW50ZWQgNi4xNi43KyAjMTE2IFBSRUVNUFQK
PiA+ID4gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPiA+ID4gcHN0YXRlOiAyMDAwMDAw
NSAobnpDdiBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4gPiA+IHBj
IDogcXVzYjJfcGh5X3J1bnRpbWVfc3VzcGVuZCsweDE0LzB4MWUwIFtwaHlfcWNvbV9xdXNiMl0K
PiA+ID4gbHIgOiBwbV9nZW5lcmljX3J1bnRpbWVfc3VzcGVuZCsweDJjLzB4NDQKPiA+ID4gWy4u
Ll0KPiA+ID4gYGBgCj4gPiA+Cj4gPiA+IEVuYWJsZSBQTSBydW50aW1lIG9ubHkgYWZ0ZXIgYXR0
YWNoaW5nIHRoZSBRUEhZIGluc3RhbmNlIGFzIGRyaXZlciBkYXRhIHRvCj4gPiA+IGF2b2lkIGEg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIFBNIHJ1bnRpbWUgY2FsbGJhY2tzLgo+ID4gPgo+
ID4gPiBSZW9yZGVyIHBtX3J1bnRpbWVfZW5hYmxlKCkgYW5kIHBtX3J1bnRpbWVfZm9yYmlkKCkg
dG8gcHJldmVudCBhCj4gPiA+IHNob3J0IHdpbmRvdyB3aGVyZSBhbiB1bm5lY2Vzc2FyeSBydW50
aW1lIHN1c3BlbmQgY2FuIG9jY3VyLgo+ID4gPgo+ID4gPiBVc2UgdGhlIGRldnJlcy1tYW5hZ2Vk
IHZlcnNpb24gdG8gZW5zdXJlIFBNIHJ1bnRpbWUgaXMgc3ltbWV0cmljYWxseQo+ID4gPiBkaXNh
YmxlZCBkdXJpbmcgZHJpdmVyIHJlbW92YWwgZm9yIHByb3BlciBjbGVhbnVwLgo+ID4gPgo+ID4g
PiBGaXhlczogODkxYTk2ZjY1YWMzICgicGh5OiBxY29tLXF1c2IyOiBBZGQgc3VwcG9ydCBmb3Ig
cnVudGltZSBQTSIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExvaWMgUG91bGFpbiA8bG9pYy5wb3Vs
YWluQG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292
IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgdjI6
IE1vdmUgcnVudGltZS1wbSBlbmFibGluZyBhZnRlciBkZXZfc2V0X2RydmRhdGEKPiA+ID4gICAg
ICB1c2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIHRvIGZpeCB1bmJhbGFuY2VkIGVuYWJsaW5n
IG9uIHJlbW92YWwKPiA+ID4gICAgICByZXdvcmQgY29tbWl0IG1lc3NhZ2UKPiA+ID4KPiA+ID4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCAxOSArKysrKysrKy0tLS0t
LS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXF1c2IyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiA+
IGluZGV4IGI1NTE0YTMyZmY4Zi4uYzQ5NmFjYmFkMGJiIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ID4gQEAgLTEwOTMsMTkgKzEwOTMsMTAgQEAg
c3RhdGljIGludCBxdXNiMl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiA+ID4gICAgICAgICAgICAgICBvci0+aHNkaXNjX3RyaW0ub3ZlcnJpZGUgPSB0cnVlOwo+ID4g
PiAgICAgICB9Cj4gPiA+Cj4gPiA+IC0gICAgIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZShkZXYpOwo+
ID4gPiAtICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gPiAtICAgICAvKgo+ID4gPiAt
ICAgICAgKiBQcmV2ZW50IHJ1bnRpbWUgcG0gZnJvbSBiZWluZyBPTiBieSBkZWZhdWx0LiBVc2Vy
cyBjYW4gZW5hYmxlCj4gPiA+IC0gICAgICAqIGl0IHVzaW5nIHBvd2VyL2NvbnRyb2wgaW4gc3lz
ZnMuCj4gPiA+IC0gICAgICAqLwo+ID4gPiAtICAgICBwbV9ydW50aW1lX2ZvcmJpZChkZXYpOwo+
ID4gPiAtCj4gPiA+ICAgICAgIGdlbmVyaWNfcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVM
TCwgJnF1c2IyX3BoeV9nZW5fb3BzKTsKPiA+Cj4gPiBOby4gcGh5X2NyZWF0ZSgpIGNoZWNrcyB3
aGV0aGVyIHRoZSBkZXZpY2UgaGFzIHJ1bnRpbWUgUE0gZW5hYmxlZC4gQnkKPiA+IG1vdmluZyB0
aGVzZSBjYWxscyBsYXRlciB5b3UndmUgZGlzYWJsZWQgcnVudGltZSBQTSBmb3IgdGhlIFBIWS4K
Pgo+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEkgY2FuIGFkZHJlc3MgaXQsIGJ1dCBp
cyB0aGVyZSBhCj4gc3BlY2lmaWMgcmVhc29uIHdoeSB0aGUgY2hpbGQgUEhZIGRldmljZSBzaG91
bGQgY29uZGl0aW9uYWxseSBlbmFibGUKPiBpdHMgb3duIHJ1bnRpbWUgUE0gYmFzZWQgb24gdGhl
IHBhcmVudOKAmXMgc3RhdGU/CgpZZXMuIEl0IG1ha2VzIGEgbGlmZSBvZiBkcml2ZXJzIGVhc2ll
cjogaWYgdGhlIHBhcmVudCBoYXMgcnVudGltZSBQTQplbmFibGVkLCBlbmFibGUgcnVudGltZSBQ
TSBmb3IgdGhlIFBIWSBkZXZpY2UgaW4gYSBzdGFuZGFyZCB3YXkuCk90aGVyd2lzZSB0aGUgbm9u
LXJ1bnRpbWUtZW5hYmxlZCBQSFkgZGV2aWNlIHdpbGwgcHJldmVudCB0aGUgcGFyZW50CihhY3R1
YWwgZGV2aWNlKSBmcm9tIHJ1bnRpbWUgc3VzcGVuZGluZy4KCgotLSAKV2l0aCBiZXN0IHdpc2hl
cwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
