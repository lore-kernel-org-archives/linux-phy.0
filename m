Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 621F3FD7091
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 20:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TikIAlNX+GBrN8YggXnUXmeqsQa0As53Jx7w5ddYN0=; b=VWMOtcp2V5Bg6A
	T21dBrCExrQnipX+zNp0qqvfNosrIwhvH49wnj/InPH5gCcrjSCZrAOG+GTF2Gg2QwVGrHjpjbLEG
	OFjlyGFMFjFjRLE3YPjNs6uD7lKAq0iU1I044QVN4uwt099bUb64XUaKSmHM7CblMYRF+LxSOF6Rp
	fIzLiwP00/uMaMixdlWF7o2lg6QQrBYK762dPGFZOn1BiFfxAqvAzq1xm+gCSzCcYhJM8eDyL2YeP
	u7YT/0Cz4SQ49WhmGUZoJkrnaWEDtFiQo6bce8wNmfu8/8SkBsI53rClw0U1lfnUwEcOaSUmiiCoG
	lNOvEDalcZEDxIjhr/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2aya-00000007COF-2jFB;
	Tue, 17 Mar 2026 20:25:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ayV-00000007CNK-2fdl
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 20:25:13 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HIJLPF1370773
	for <linux-phy@lists.infradead.org>; Tue, 17 Mar 2026 20:25:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GpbFY1gjKra/+bdktVPmJK8BdIX5dAmrnofgrI5SFpY=; b=EafpF6VGrZJ5QKDM
	DW+oQbHSm8fFBlteSX42GqhhCoLCuBxfvGH67lOfq0igWX9yuAJGl4bmqWGraW4a
	xE+dgCvOI0R0lehs8JTZ8pMzJMJWnNJR+7gRdmO4aW/TqGyR4ZOAdaXcsEujY5YO
	olNF5FdCM6mC9UxLcMdqUPM7hDUZ7mwY0qnFhTu6+8skxlti7ZQXrkz8wGFAVNeh
	UXWGFcJfdUE2q4hmoqHtmmbUyQdsUWt/zh+dbegDEml6aEUwe+mFnXscqt4xm5Ml
	iZH6RpEqI30PxIZIHxpvr8dUzVaNMOXX2gws8POb8Mbolju8E/SqKChEDmgIApst
	NXW5Eg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy7he1r7w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Mar 2026 20:25:10 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bdf6fe90a9so5620748eec.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Mar 2026 13:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773779110; x=1774383910; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GpbFY1gjKra/+bdktVPmJK8BdIX5dAmrnofgrI5SFpY=;
        b=UedTaYiJJjPC4i8TGpNyMpi2rw77MxMh1ShEieKraZEWf84o58DpGtw6I2RA4FhfOF
         hkRZK0qBPA8fUtfDa8l1uy6miuU17sldzSSawhmo9c5mwYebuM1U5JCIB0RmKWCSsgNa
         tPURcIEc4HgcyGeKPeABb7ReLQi9cQ2j2hLIde5I3DP9jEzm7DETY72dF6BIzZyswji2
         N0WwlmULBnPA+elkrDoMiH/tDZYz5HmYbE3bJDV2xz8oxSZwFDbGHKldI7hTttPm7f/G
         Buhkwweqcd2a0zmGGRtLxxaO7jxPwqESvaYk5GMCwd0njMCCwkElEY6npYzH4/vDVp5s
         ppdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773779110; x=1774383910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GpbFY1gjKra/+bdktVPmJK8BdIX5dAmrnofgrI5SFpY=;
        b=JYn1pTwkyOhMFH+BQlOnB9tglTeJIvbS816PGbmKtrgqvIKS03smmdiEdtVYNWnJlT
         kDqmyfd29CMDaMuKW7M7otvyxBCvxIFX4naiDxZ8Ve4eKaoOlBC3LydbhejZZs63Z1ol
         wK/ts4ySFJqvJe+qjFFCyNaMUFI0rCFoOaYCakLoNPLa8eBk7NSuYYNnkEXq89HN7+OS
         r2HrTMdHGJetXY+r3hSm7zMWkD2JrElhRKmGgjw0JPGSINwh1KmvoOLF5B4+jC1RiG/5
         R2C/H5J6LYzdlgjoDflVJmWn0DnSV80Ln9HL9rjLudZ3ZPyFrr2F4/eCcyjei8/Vz4BM
         +XXw==
X-Forwarded-Encrypted: i=1; AJvYcCWLPU8mIYePE4S6DhYcSwU1ikLmJwU7+dHyeef7r2XgDGPf4HMlYPktA/Jqxl7sOc6jdc5F1ztrh8A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzx1/3QYz59wBxtH1t3teUQjUR2RKNHu5rMkawN9TP7h5x14TjD
	TM+ekfJkb78GZ5jZtB9VBk51yMou4Mx7gqxPmUBzrk7Vo9N+/dAQqhxmv2sH5Uzf2poVJTQ5Bzd
	RQyyZIODhsWwABbl+RlsNQ6xCDQQttW9/S42p7pjPtUmAID8qRouhhNXwueksOcWp7Gp9
X-Gm-Gg: ATEYQzwGE1Jz9qn28VXYG52vrvFVfizWyvs/KhQFjtjkLBesxLkXIEOQNLvq/jdAy6o
	/3RZOdRE+0kT+tOE5TUFIvyxYSoJrhC+g6SWzLBhPSW5GuOEQCd3v1bbYJvt77f/zyJ5v0jzvr4
	rjHy9F9pXEaT83laYQ0E2E9uWSxIO3G9uj+h0pydDHolvuCyXqGUoNUKDV2UmwwNq+gbbWplG31
	EFQZl1oDWtpU6DJVC74BsMbFT3lGBualKWAusJhmvk11Si23GN7mREj3vimWbR3jUFBDXLvBNuY
	OksMiZahnphNEGd7cAmcUoojKpW+Q3e0H+xUCY63RZ09cf9JZe5Q3bz7PR2TkIE7PhZU4ERWavk
	d8DtpBQ/GzqPx+YH0n00HT3Ye1G/k86ftnUTLbNwUMQiPtAQvXICQV/U+t9Ke8NFYugiPFz75Va
	RPgRLk
X-Received: by 2002:a05:7300:a54b:b0:2be:80c4:2c8c with SMTP id 5a478bee46e88-2c0e4ffa9d0mr398502eec.8.1773779109511;
        Tue, 17 Mar 2026 13:25:09 -0700 (PDT)
X-Received: by 2002:a05:7300:a54b:b0:2be:80c4:2c8c with SMTP id 5a478bee46e88-2c0e4ffa9d0mr398479eec.8.1773779108900;
        Tue, 17 Mar 2026 13:25:08 -0700 (PDT)
Received: from [10.62.37.228] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e55a53fcsm1134929eec.24.2026.03.17.13.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 13:25:08 -0700 (PDT)
Message-ID: <4afceefe-8053-4c10-8595-39dab9379aab@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 13:25:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <3VqSGUgMUKaCja5WYOrOP8nJ_mw_eDPdItA8d1CvqUg4ASPS5IUc_aT2E-XIo0YmnYo8QltXVw8_6NDxtdqGGw==@protonmail.internalid>
 <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
 <edf766b8-2664-4dac-b626-551807b3e5ef@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <edf766b8-2664-4dac-b626-551807b3e5ef@kernel.org>
X-Proofpoint-GUID: 6ALDfoFjPawvalrM6O2gED7ReGzXN_XW
X-Proofpoint-ORIG-GUID: 6ALDfoFjPawvalrM6O2gED7ReGzXN_XW
X-Authority-Analysis: v=2.4 cv=QsVTHFyd c=1 sm=1 tr=0 ts=69b9b8a6 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=CIW99FJ8g63gKaA5L-sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE3OSBTYWx0ZWRfXwQxdE7Gky3/3
 UMfNSACgAEz9zV2P7tuizOcEb6YrYqk+SHk6xWfrxvVnh2ufOLPI4ilqB6jzhtWyHDcwwjr6NQW
 uLixD0voLGe3b0Pi+9yIzXn6mYtW9363MvWE3j9MtwXrseppGJYk1S5OsuECv6qOUbJyuH67GJX
 XpUjI8ttM6hAAyZBqyzXC0zC3D6PWD6i8ArTaXdHOjKd1914Bs8JLm1VmvDuOkbvLpRo3e6bKTW
 N88S/aIbSZRZu+oJsexSpy9c5jyohTbZFDWPxMIuEF0akNm8iwfzr7YyH+i/qIXWk+Bzd4uHB7e
 taHe88p51TPhmvxsJZn931zjdsw5lk7/H74BWvOeBbA9qjwpw9OYtewvwzeaxmF6Z8D2DIMQg5+
 5BFgYfhJa/Yh0Jz7uBozecTtiXpbVYpV6GUEbr8R+GJPE9f5HNEGxjPrpyipxJQeFbt2tfK5ncv
 sLl0rCrdXJb5nhkiDyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_132511_802215_791B131B 
X-CRM114-Status: GOOD (  24.42  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAzLzE2LzIwMjYgMTA6MjYgUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMTYv
MDMvMjAyNiAyMTozMSwgVmlqYXkgS3VtYXIgVHVtYXRpIHdyb3RlOgo+PiBIaSBCcnlhbiwKPj4K
Pj4gT24gMy8xNS8yMDI2IDQ6NTIgUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+PiBBZGQg
YSBiYXNlIHNjaGVtYSBpbml0aWFsbHkgY29tcGF0aWJsZSB3aXRoIHgxZTgwMTAwIHRvIGRlc2Ny
aWJlIE1JUEkgCj4+PiBDU0kyCj4+PiBQSFkgZGV2aWNlcy4KPj4+Cj4+PiBUaGUgaGFyZHdhcmUg
Y2FuIHN1cHBvcnQgYm90aCBDLVBIWSBhbmQgRC1QSFkgbW9kZXMuIFRoZSBDU0lQSFkgZGV2aWNl
cwo+Pj4gaGF2ZSB0aGVpciBvd24gcGlub3V0cyBvbiB0aGUgU29DIGFzIHdlbGwgYXMgdGhlaXIg
b3duIGluZGl2aWR1YWwgCj4+PiB2b2x0YWdlCj4+PiByYWlscy4KPj4+Cj4+PiBUaGUgbmVlZCB0
byBtb2RlbCB2b2x0YWdlIHJhaWxzIG9uIGEgcGVyLVBIWSBiYXNpcyBsZWFkcyB1cyB0byBkZWZp
bmUKPj4+IENTSVBIWSBkZXZpY2VzIGFzIGluZGl2aWR1YWwgbm9kZXMuCj4+Pgo+Pj4gVHdvIG5p
Y2Ugb3V0Y29tZXMgaW4gdGVybXMgb2Ygc2NoZW1hIGFuZCBEVCBhcmlzZSBmcm9tIHRoaXMgY2hh
bmdlLgo+Pj4KPj4+IDEuIFRoZSBhYmlsaXR5IHRvIGRlZmluZSBvbiBhIHBlci1QSFkgYmFzaXMg
dm9sdGFnZSByYWlscy4KPj4+IDIuIFRoZSBhYmlsaXR5IHRvIHJlcXVpcmUgdGhvc2Ugdm9sdGFn
ZS4KPj4+Cj4+PiBXZSBoYXZlIGhhZCBhIGNvbXBsZXRlIGJvZGdlIHVwc3RyZWFtIGZvciB0aGlz
IHdoZXJlIGEgc2luZ2xlIHNldCBvZgo+Pj4gdm9sdGFnZSByYWlsIGZvciBhbGwgQ1NJUEhZcyBo
YXMgYmVlbiBidXJpZWQgaW5zaWRlIG9mIENBTVNTLgo+Pj4KPj4+IE11Y2ggbGlrZSB0aGUgSTJD
IGJ1cyB3aGljaCBpcyBkZWRpY2F0ZWQgdG8gQ2FtZXJhIHNlbnNvcnMgLSB0aGUgQ0NJIAo+Pj4g
YnVzIGluCj4+PiBDQU1TUyBwYXJsYW5jZSwgdGhlIENTSVBIWSBkZXZpY2VzIHNob3VsZCBiZSBp
bmRpdmlkdWFsbHkgbW9kZWxsZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQnJ5YW4gTydEb25v
Z2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+PiAtLS0KPj4+IMKgwqAgLi4uL2Jp
bmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWzCoMKgwqDCoMKgwqAgfCAxMzMg
KysrKysrKysrIAo+Pj4gKysrKysrKysrKysrCj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAxMzMg
aW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtIAo+Pj4gY3NpMi1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC0gCj4+PiBjc2ky
LXBoeS55YW1sCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAw
MC4uYjgzYzJkNjVlYmM2ZQo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPj4+
IEBAIC0wLDAgKzEsMTMzIEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1waHkueWFt
bCMKPj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUu
eWFtbCMKPj4+ICsKPj4+ICt0aXRsZTogUXVhbGNvbW0gQ1NJMiBQSFkKPj4+ICsKPj4+ICttYWlu
dGFpbmVyczoKPj4+ICvCoCAtIEJyeWFuIE8nRG9ub2dodWUgPGJvZEBrZXJuZWwub3JnPgo+Pj4g
Kwo+Pj4gK2Rlc2NyaXB0aW9uOgo+Pj4gK8KgIFF1YWxjb21tIE1JUEkgQ1NJMiBDLVBIWS9ELVBI
WSBjb21iaW5hdGlvbiBQSFkuIENvbm5lY3RzIE1JUEkgQ1NJMiAKPj4+IHNlbnNvcnMKPj4+ICvC
oCB0byBRdWFsY29tbSdzIENhbWVyYSBDU0kgRGVjb2Rlci4gVGhlIFBIWSBzdXBwb3J0cyBib3Ro
IEMtUEhZIGFuZCAKPj4+IEQtUEhZCj4+PiArwqAgbW9kZXMuCj4+PiArCj4+PiArcHJvcGVydGll
czoKPj4+ICvCoCBjb21wYXRpYmxlOgo+Pj4gK8KgwqDCoCBjb25zdDogcWNvbSx4MWU4MDEwMC1j
c2kyLXBoeQo+Pj4gKwo+Pj4gK8KgIHJlZzoKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4+ICsK
Pj4+ICvCoCAiI3BoeS1jZWxscyI6Cj4+PiArwqDCoMKgIGNvbnN0OiAxCj4+PiArCj4+PiArwqAg
Y2xvY2tzOgo+Pj4gK8KgwqDCoCBtYXhJdGVtczogNAo+Pj4gKwo+Pj4gK8KgIGNsb2NrLW5hbWVz
Ogo+Pj4gK8KgwqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6IGNzaXBoeQo+Pj4g
K8KgwqDCoMKgwqAgLSBjb25zdDogY3NpcGh5X3RpbWVyCj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0
OiBjYW1ub2NfYXhpCj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBjcGFzX2FoYgo+Pj4gKwo+Pj4g
K8KgIGludGVycnVwdHM6Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+PiArCj4+PiArwqAgb3Bl
cmF0aW5nLXBvaW50cy12MjoKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4+ICsKPj4+ICvCoCBw
b3dlci1kb21haW5zOgo+Pj4gK8KgwqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgIC0gZGVzY3Jp
cHRpb246IFRJVEFOIFRPUCBHRFNDCj4+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBNWEMg
b3IgTVhBIHZvbHRhZ2UgcmFpbAo+PiBXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gcHJvdmlzaW9uIE1Y
QSBvciBNWEMgYXMgYW4gYWRkaXRpb25hbCBvcHRpb25hbAo+PiBwb3dlciBkb21haW4/IEkgc2Vl
ICdjYW1fY2NfY3BoeV9yeF9jbGtfc3JjJywgdGhlIHBhcmVudCBvZiBhbGwgQ1NJUEhZeAo+PiBj
bG9ja3MsIG5lZWQgYWxsIHRocmVlIHBvd2VyIGRvbWFpbnMgb24gdGhpcyBjaGlwc2V0Lgo+IAo+
IEkgZG9uJ3QgdGhpbmsgdGhpcyBzaG91bGQgYmUgb3B0aW9uYWwuIEhhdmUgdGhlIGR0cyBwb2lu
dCB0byBhbiAibXgiIAo+IHBvd2VyLWRvbWFpbiBhbmQgdGhlbiBzZWxlY3Qgd2hpY2ggb25lIGlz
IHJpZ2h0IGZvciBhIFBIWSBNWC9NWEEgb3IgTVhDLgo+IAo+IFlvdXIgd29yc3QgY2FzZSBoZXJl
IGlzIHNvbWUgZnV0dXJlIFBIWSB3aGljaCBoYXMgbW9yZSBvciBmZXdlciBQRHMgCj4gd2hpY2gg
aXMgdGhlbiBlaXRoZXIgYSBzcGVjaWFsIGNhc2UgaW4gdGhpcyBmaWxlIG9yIGEgd2hvbGUgbmV3
IGZpbGUgZm9yIAo+IHRoYXQgY29tcGF0Lgo+IApJIHRoaW5rIGl0IGlzIHRoZSBjYXNlIG9uIHgx
ZSogYXMgd2VsbCwgQnJ5YW4uCj4+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBNTUNYIHZv
bHRhZ2UgcmFpbAo+Pj4gKwo+Pj4gK8KgIHBvd2VyLWRvbWFpbi1uYW1lczoKPj4+ICvCoMKgwqAg
aXRlbXM6Cj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiB0b3AKPj4+ICvCoMKgwqDCoMKgIC0gY29u
c3Q6IG14Cj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBtbWN4Cj4+PiArCj4+PiArwqAgdmRkYS0w
cDgtc3VwcGx5Ogo+Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byBhIDAuOFYgcmVn
dWxhdG9yIHN1cHBseSB0byBhIFBIWS4KPj4+ICsKPj4+ICvCoCB2ZGRhLTFwMi1zdXBwbHk6Cj4+
PiArwqDCoMKgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIDEuMlYgcmVndWxhdG9yIHN1cHBseSB0
byBhIFBIWS4KPj4+ICsKPj4+ICtyZXF1aXJlZDoKPj4+ICvCoCAtIGNvbXBhdGlibGUKPj4+ICvC
oCAtIHJlZwo+Pj4gK8KgIC0gIiNwaHktY2VsbHMiCj4+PiArwqAgLSBjbG9ja3MKPj4+ICvCoCAt
IGNsb2NrLW5hbWVzCj4+PiArwqAgLSBpbnRlcnJ1cHRzCj4+PiArwqAgLSBvcGVyYXRpbmctcG9p
bnRzLXYyCj4+PiArwqAgLSBwb3dlci1kb21haW5zCj4+PiArwqAgLSBwb3dlci1kb21haW4tbmFt
ZXMKPj4+ICvCoCAtIHZkZGEtMHA4LXN1cHBseQo+Pj4gK8KgIC0gdmRkYS0xcDItc3VwcGx5Cj4+
PiArCj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+PiArCj4+PiArZXhhbXBsZXM6
Cj4+PiArwqAgLSB8Cj4+PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9j
bG9jay9xY29tLHgxZTgwMTAwLWNhbWNjLmg+Cj4+PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWdjYy5oPgo+Pj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvcGh5L3BoeS5oPgo+Pj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93
ZXIvcWNvbSxycG1ocGQuaD4KPj4+ICsKPj4+ICvCoMKgwqAgY3NpcGh5QGFjZTQwMDAgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSx4MWU4MDEwMC1jc2kyLXBoeSI7Cj4+
PiArwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MGFjZTQwMDAgMHgyMDAwPjsKPj4+ICvCoMKgwqDC
oMKgwqDCoCAjcGh5LWNlbGxzID0gPDE+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2Nr
cyA9IDwmY2FtY2MgQ0FNX0NDX0NTSVBIWTBfQ0xLPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmNhbWNjIENBTV9DQ19DU0kwUEhZVElNRVJfQ0xLPiwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNhbWNjIENBTV9DQ19DQU1OT0NfQVhJX1JU
X0NMSz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1f
Q0NfQ1BBU19BSEJfQ0xLPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjc2lw
aHkiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3Np
cGh5X3RpbWVyIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgImNhbW5vY19heGkiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAiY3Bhc19haGIiOwo+PiBBbHRob3VnaCBpdCdzIG5vdCBhIGNvbmNlcm4gZnJvbSBt
eSBzaWRlLCBqdXN0IHdhbnQgdG8gYmUgZXhwbGljaXRseQo+PiBzdXJlIHRoYXQgZXZlcnlvbmUg
aXMgaGFwcHkgd2l0aCB0aGUgY2xvY2sgbmFtZXMsIGp1c3QgdG8gYXZvaWQgYW55Cj4+IGNoYW5n
ZXMgbGF0ZXIgb24gd2hlbiBvdGhlciBtb2R1bGVzIGFyZSBzZXBhcmF0ZWQgb3V0Lgo+IAo+IFRo
ZXNlIGFyZSB0aGUgbmFtZXMgd2UgYWxyZWFkeSB1c2UgaW4gQ0FNU1Mgc28gLi4uIHRoZXkncmUg
Z29vZCBlbm91Z2ggCj4gdG8gc3RhcnQgZnJvbS4KPiAKU3VyZSwgRllJOiBEbWl0cnksIEtvbnJh
ZC4KPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjc2lw
aHlfb3BwX3RhYmxlPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgNDc3IElSUV9UWVBFX0VER0VfUklTSU5HPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBwb3dlci1kb21haW5zID0gPCZjYW1jYyBDQU1fQ0NfVElUQU5fVE9QX0dEU0M+LAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGQgUlBN
SFBEX01YPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmcnBtaHBkIFJQTUhQRF9NTUNYPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCBwb3dlci1kb21h
aW4tbmFtZXMgPSAidG9wIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAibXgiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJtbWN4IjsKPj4+ICsKPj4+ICvCoMKg
wqDCoMKgwqDCoCB2ZGRhLTBwOC1zdXBwbHkgPSA8JnZyZWdfbDJjXzBwOD47Cj4+PiArwqDCoMKg
wqDCoMKgwqAgdmRkYS0xcDItc3VwcGx5ID0gPCZ2cmVnX2wxY18xcDI+Owo+Pj4gK8KgwqDCoCB9
Owo+Pj4gKwo+Pj4gK8KgwqDCoCBjc2lwaHlfb3BwX3RhYmxlOiBvcHAtdGFibGUgewo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+PiArCj4+
PiArwqDCoMKgwqDCoMKgwqAgb3BwLTMwMDAwMDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+LAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJw
bWhwZF9vcHBfbG93X3N2c19kMT47Cj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoCBvcHAtNDAwMDAwMDAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9wcC1oeiA9IC9iaXRzLyA2NCA8NDAwMDAwMDAwPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2cz4sCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcnBtaHBkX29w
cF9sb3dfc3ZzPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDC
oMKgIG9wcC00ODAwMDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BwLWh6ID0g
L2JpdHMvIDY0IDw0ODAwMDAwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWly
ZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGRfb3BwX2xvd19zdnM+
Owo+PiA0ODBtaHogc2hvdWxkIGJlIHN2cz8KPiAKPiBZZXMgeW91J3JlIHJpZ2h0IHRoYW5rcyBm
b3Igc3BvdHRpbmcuCj4gCj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqAgfTsKPj4+
Cj4+IFRoYW5rcywKPj4gVmlqYXkuCj4gClRoYW5rcywKVmlqYXkuCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
