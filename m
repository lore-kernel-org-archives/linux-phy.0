Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0BB9F94CCA
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtRYkjarf3FlnQwvnrkpVtNP7qRpW83xhuX3HjJ5Pzo=; b=MrWdjA0Y7Ms16j
	pNEOIyXNr7vlgmN+35PCYdI66iHPQTkQpy+3vHxlvVfBnOHhL3g22+Vrf35myJUCS3mBOuDMroOxi
	B7DiCWehhv8vQqIGHqeZ3xKdRbJPtq+YGbr2QtTM44n88zbJAw+te3LdmOMLZavEwhWKrCxd22ITI
	wsyEf1qWG86vGk8QgFZPO6kN71LFkEBIyulsBsiw6FhtubCr/ecfP8jWSteeOjn2jd3eDDCNVppRz
	e0OaX3/MDa3L2PiRzQjULiT7M23x62qzmBZTeJuOhKfWr0NsP/MBfh3PMJOrpvyIsNEqpp1Ib7m3U
	1H/M7mx6jpcvZUyk8GVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfD-00000009dmL-1viX;
	Wed, 22 Apr 2026 06:02:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfB-00000009dlV-0T3c
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M5buge2000983
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RxeiI/RoaA52ZR6lVCrFiiEopN9Vii0pOak1OkFKITQ=; b=badEfmsvpHpAJQhp
	ICQAMznRv3FpEPu7vDNpZKWYMhUfOWLWMpJdwbmrHqh6XojE9S6h0Do+pX+1GIPX
	KHnQWW+OoWqkPT+Df/TI8YHO+K7HDK8zYKmEbswvJGwPCqH4bPGktLjW4rcMl2u0
	1YMnSTCN7DDzxgeZYNccwtAdfPUdiqZjEBnqtIxxmRnMIuWTFT6l0g89uW/TsNau
	cJVZcGhUd4jLvwbonMzoB9ffliFmF6i6YiOF8InTqAvISsevz6Chwkf5VMNvrkp8
	Vp0DES3lntiZe50A6oLeqDZ8vAj8gQp+PJ6oUnPHfOPJF+YxW5H6jjvtDaBqDkkb
	hVMzjQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenf9wuw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8eb82634cbeso528726885a.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837736; x=1777442536; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RxeiI/RoaA52ZR6lVCrFiiEopN9Vii0pOak1OkFKITQ=;
        b=Kg89e+6MDIdZGeXRxXuY5IdaaNybz2xKHFcNxFClxt48ZMsuL/+ClbgDJ9PWKFDgmz
         KKjSqDkEK0BsszAzBd4DI/uHB2ZApgYL620iarYF52aHnA7jCu8nLdeWRtZHKQ0nuWiV
         wC4q+vYV4os2CLwlBUv0l3C46ud1aPzl57BNgI3968z/REOauoV7AlwRkmbSr29b9Y3A
         YgKDSrhzlegKymb+4yecG94n7NJEfups6NZRKZkdLNduVMEytn+WJPyjlg55EwaL8o3b
         T9vlM3nSw69oeecwA3ez8CHQHexizOwKQ9FUBK2qvRz4LAQIUSwKUcPOhFl1/o9Pl1sF
         hBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837736; x=1777442536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RxeiI/RoaA52ZR6lVCrFiiEopN9Vii0pOak1OkFKITQ=;
        b=qztRn0CE9+UBgd5aJ3FFg7o5X/WC3ZnZ4dysw1vq2jZjzCM3Lwh3XsKBabBZzHPBEq
         tGP1qWsY1vMOXD7mmg/z1UJiofzQ8CFFzloe/yNnTFUIVhHzln1d/fXxLLb9y0Rvf8HA
         StCYM3PwH9OZtJeOs65Mr/2Dh/TpgpXFyWfc6FYoeeXE64u+BNiVbtOS1sv84nG/ZBed
         55lcx7ukL3xivBUAB34hpoHp21tYQrHnh+aV+DE1aKNckp8uHti2I4kGOG1OPVphjnwr
         ipvfMw9ivqVv43SJz4EIeDoe7B2TTAYYMkjC0oZw4lElCdxrsISk8zLWzwk76eKFt7dz
         08og==
X-Forwarded-Encrypted: i=1; AFNElJ/93cFHPYah4WctB7ta3EuH6nF6HEuP+I/pSsWDahUbMFGZxzXlbhTX/hI0kbWTXpqEFRHKJxfscYk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yymkvf+yo8y7DKCMUl0GM+KtsdwrWc0DF+hpcFuv7X8bzTGWw8L
	gQHaXIvr19oKx1fzXVPa8YnIAocKV3ImG9dwyH6sU9AraE3mKssfuCEZwyzpIaGtTvaQY4ijRHu
	mDJRsUTwVzTrLCUvL5fxz+gbYrYdYX9hkaFY3HMuy8BcTrk2vxG9j/3/hxcoNbx+VlnpL
X-Gm-Gg: AeBDietHvDtbKfQN8lvXQsx+Pp/xtAms0oh4ghi/VPuTsrRg9rFvSsgbvKgW4Hx+8D+
	QROwMwKHWYgj/QK+vR7SRpt/FQ5OwfUQ9QP+E3Rg04t33mA8Zxvq//FfVWQfn/64zljF29aThhP
	SDby1tTi+Gh7qVCiQUP+j44ClxyIakVW/bFYl2EAfVR2joWgZIua8Q3qAershiRHCOBqLQ+jhak
	8JNTDtyuC+6vrsD2zMcq/HecRFvvH12Dv+21vvjHmcEcG/niETp5qoIkd5inc2pjZKMl7kCD/5m
	HD48XX5Sgd1j6dymJND0MMcwx2XJB6DAzzomzWvtdlkdR9pNCGVvZOWsWBVAL6gXphZ+blZEz25
	qGAhwHXLVLcCM57IYmCVsp0akV8xch2UTGqQfGCkkAeQi79DRMlRxq1gvYVY+JVF83bPehGL+5G
	PSD/zJzgCzsw2lcZKbRg==
X-Received: by 2002:a05:620a:7113:b0:8d6:2958:ec1e with SMTP id af79cd13be357-8e792962a01mr2883073385a.58.1776837734718;
        Tue, 21 Apr 2026 23:02:14 -0700 (PDT)
X-Received: by 2002:a05:620a:7113:b0:8d6:2958:ec1e with SMTP id af79cd13be357-8e792962a01mr2883070385a.58.1776837734282;
        Tue, 21 Apr 2026 23:02:14 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:13 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 14:01:51 +0800
Subject: [PATCH v4 1/5] phy: qcom: edp: Unify generic DP/eDP swing and
 pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20260422-edp_phy-v4-1-c38bef2d027b@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=3913;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=ZvT7qgSFLpdex2Ylpf+73VTMqkc/s9oyjE//rNwO4D8=;
 b=gmbKCn9+ZdWurqtMj/95xmyfSF3k0EhnlaeEItcktX7otzcmwJAqLGkk5szavKagMO9Q0Kq9k
 fDdOFSiOC2lBtRwaMk6qCTwzBLqw6pi17aLJm8Go1fAY2RYMJPBz5Pd
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: 1s3C7yYmljckz-au7079r8BY93--F08N
X-Authority-Analysis: v=2.4 cv=fozsol4f c=1 sm=1 tr=0 ts=69e86468 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_hJh01-1qFuxGScrDK8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfXwLC41WeuKHZY
 vaMYvkKpgCd8XkOq3ec2ObeMGonkuXrScMTOBfEy8JJu+7HQCbr3X5wBaiIX0Q4xIuFGW+m7pyf
 ISKovdwXPMjjwStHbEeL2hqfocYKQIkqPGibJUNGT8GJaVOZ51njEIoVJQQfriZBcwg6EAK/7QC
 bzjwYZ2Jugr4CcoAu94uPh2u1U3FgwCFyEGiKiYJY5zxn20z5wM0ZaqBGrADnZyzj+OPCB9TXiH
 FXO4iPewuw5uIA0jG6cp27F4M3NKrxDGuNU8081I4hzuXSDteLB+uyLsoIL5kPNf+I3BvtQ4yVp
 MAC0/aUgCAJH72vJF+2jOLseHhG74iNa1lwQ7XINWM6a3Tey7t8isUUezR8qArN1Idsn4o7W0ZV
 3XBzeOEBEUz1/3qhEuPGxAv/IZYfFfM4XYA04b/Mgr8E2zdUpvQgIC4ALkRciWj2TSOw6xsrArF
 QxN0DyJH6TXZ3AJyWCw==
X-Proofpoint-GUID: 1s3C7yYmljckz-au7079r8BY93--F08N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230217_179766_6C5DEF62 
X-CRM114-Status: GOOD (  13.75  )
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

VGhlIGN1cnJlbnQgZURQIGFuZCBEUCBzd2luZy9wcmUtZW1waGFzaXMgdGFibGVzIGRvIG5vdCBt
YXRjaCB0aGUgSFBHCnJlcXVpcmVtZW50cyBmb3IgdGhlIHN1cHBvcnRlZCBwbGF0Zm9ybXMsIGNv
cnJlY3QgdGhlIHRhYmxlIGFjY29yZGluZ2x5LgoKVGhlIGdlbmVyaWMgdGFibGVzIHdoaWNoIGNh
biBiZSBzaGFyZWQgYXMgZm9sbG93czoKCkRQIG1vZGXvvJoKCS1zYTg3NzVwL3NjNzI4MC9zYzgy
ODB4cC94MWU4MDEwMAoJLWdseW11cgoJLXNjODE4MHgKZURQIG1vZGUobG93IHZkaWZmKToKCS1n
bHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEwMAoJLXNjNzI4MAoJLXNjODE4MHgKClRoZSBw
cm9wZXIgdGFibGVzIGZvciBTQzgxODBYIGFuZCBTQzcyODAgd2lsbCBiZSBhZGRlZCBpbiBhIGxh
dGVyIHBhdGNoLApzaW5jZSB0aGV5IG5lZWQgc2VwYXJhdGUgdGFibGUuCgpDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwpGaXhlczogZjE5OTIyM2NiNDkwICgicGh5OiBxY29tOiBJbnRyb2R1Y2Ug
bmV3IGVEUCBQSFkgZHJpdmVyIikKUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25n
eGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1lZHAuYyB8IDQxICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLWVkcC5jCmluZGV4IDczNzJkZTA1YTBiOC4uMmFmM2ZkNjM4MzJmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYworKysgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwpAQCAtMTE2LDE3ICsxMTYsMTcgQEAgc3Ry
dWN0IHFjb21fZWRwIHsKIH07CiAKIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnJfcmJyWzRd
WzRdID0gewotCXsgMHgwOCwgMHgwZiwgMHgxNiwgMHgxZiB9LAorCXsgMHgwNywgMHgwZiwgMHgx
NiwgMHgxZiB9LAogCXsgMHgxMSwgMHgxZSwgMHgxZiwgMHhmZiB9LAogCXsgMHgxNiwgMHgxZiwg
MHhmZiwgMHhmZiB9LAogCXsgMHgxZiwgMHhmZiwgMHhmZiwgMHhmZiB9CiB9OwogCiBzdGF0aWMg
Y29uc3QgdTggZHBfcHJlX2VtcF9oYnJfcmJyWzRdWzRdID0gewotCXsgMHgwMCwgMHgwZCwgMHgx
NCwgMHgxYSB9LAorCXsgMHgwMCwgMHgwZSwgMHgxNSwgMHgxYSB9LAogCXsgMHgwMCwgMHgwZSwg
MHgxNSwgMHhmZiB9LAogCXsgMHgwMCwgMHgwZSwgMHhmZiwgMHhmZiB9LAotCXsgMHgwMywgMHhm
ZiwgMHhmZiwgMHhmZiB9CisJeyAweDA0LCAweGZmLCAweGZmLCAweGZmIH0KIH07CiAKIHN0YXRp
YyBjb25zdCB1OCBkcF9zd2luZ19oYnIyX2hicjNbNF1bNF0gPSB7CkBAIC0xNTgsNyArMTU4LDcg
QEAgc3RhdGljIGNvbnN0IHU4IGVkcF9zd2luZ19oYnJfcmJyWzRdWzRdID0gewogfTsKIAogc3Rh
dGljIGNvbnN0IHU4IGVkcF9wcmVfZW1wX2hicl9yYnJbNF1bNF0gPSB7Ci0JeyAweDA1LCAweDEy
LCAweDE3LCAweDFkIH0sCisJeyAweDA1LCAweDExLCAweDE3LCAweDFkIH0sCiAJeyAweDA1LCAw
eDExLCAweDE4LCAweGZmIH0sCiAJeyAweDA2LCAweDExLCAweGZmLCAweGZmIH0sCiAJeyAweDAw
LCAweGZmLCAweGZmLCAweGZmIH0KQEAgLTE3MiwxMCArMTcyLDEwIEBAIHN0YXRpYyBjb25zdCB1
OCBlZHBfc3dpbmdfaGJyMl9oYnIzWzRdWzRdID0gewogfTsKIAogc3RhdGljIGNvbnN0IHU4IGVk
cF9wcmVfZW1wX2hicjJfaGJyM1s0XVs0XSA9IHsKLQl7IDB4MDgsIDB4MTEsIDB4MTcsIDB4MWIg
fSwKLQl7IDB4MDAsIDB4MGMsIDB4MTMsIDB4ZmYgfSwKLQl7IDB4MDUsIDB4MTAsIDB4ZmYsIDB4
ZmYgfSwKLQl7IDB4MDAsIDB4ZmYsIDB4ZmYsIDB4ZmYgfQorCXsgMHgwYywgMHgxNSwgMHgxOSwg
MHgxZSB9LAorCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9LAorCXsgMHgwZSwgMHgxNCwgMHhm
ZiwgMHhmZiB9LAorCXsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9CiB9OwogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9l
bXBoX2NmZyA9IHsKQEAgLTE5MywyNyArMTkzLDYgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9waHlf
dmNvX2Rpdl9jZmdfdjRbNF0gPSB7CiAJMHgwMSwgMHgwMSwgMHgwMiwgMHgwMCwKIH07CiAKLXN0
YXRpYyBjb25zdCB1OCBlZHBfcHJlX2VtcF9oYnJfcmJyX3Y1WzRdWzRdID0gewotCXsgMHgwNSwg
MHgxMSwgMHgxNywgMHgxZCB9LAotCXsgMHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9LAotCXsgMHgw
NiwgMHgxMSwgMHhmZiwgMHhmZiB9LAotCXsgMHgwMCwgMHhmZiwgMHhmZiwgMHhmZiB9Ci19Owot
Ci1zdGF0aWMgY29uc3QgdTggZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1WzRdWzRdID0gewotCXsg
MHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAotCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9LAot
CXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhmZiB9LAotCXsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9
Ci19OwotCi1zdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBl
ZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSA9IHsKLQkuc3dpbmdfaGJyX3JiciA9ICZlZHBf
c3dpbmdfaGJyX3JiciwKLQkuc3dpbmdfaGJyM19oYnIyID0gJmVkcF9zd2luZ19oYnIyX2hicjMs
Ci0JLnByZV9lbXBoYXNpc19oYnJfcmJyID0gJmVkcF9wcmVfZW1wX2hicl9yYnJfdjUsCi0JLnBy
ZV9lbXBoYXNpc19oYnIzX2hicjIgPSAmZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1LAotfTsKLQog
c3RhdGljIGNvbnN0IHU4IGVkcF9waHlfYXV4X2NmZ192NVtEUF9BVVhfQ0ZHX1NJWkVdID0gewog
CTB4MDAsIDB4MTMsIDB4YTQsIDB4MDAsIDB4MGEsIDB4MjYsIDB4MGEsIDB4MDMsIDB4MzcsIDB4
MDMsIDB4MDIsIDB4MDIsIDB4MDAsCiB9OwpAQCAtNTY0LDcgKzU0Myw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYTg3NzVwX2RwX3BoeV9jZmcgPSB7CiAJLmlzX2Vk
cCA9IGZhbHNlLAogCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y1LAogCS52Y29fZGl2X2Nm
ZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjQsCi0JLnN3aW5nX3ByZV9lbXBoX2NmZyA9ICZlZHBf
cGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSwKKwkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9w
aHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAogCS52ZXJfb3BzID0gJnFjb21fZWRwX3BoeV9vcHNfdjQs
CiB9OwogCkBAIC05NDUsNyArOTI0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29w
cyBxY29tX2VkcF9waHlfb3BzX3Y4ID0gewogc3RhdGljIHN0cnVjdCBxY29tX2VkcF9waHlfY2Zn
IGdseW11cl9waHlfY2ZnID0gewogCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y4LAogCS52
Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjgsCi0JLnN3aW5nX3ByZV9lbXBoX2Nm
ZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSwKKwkuc3dpbmdfcHJlX2VtcGhfY2Zn
ID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAogCS52ZXJfb3BzID0gJnFjb21fZWRwX3Bo
eV9vcHNfdjgsCiB9OwogCgotLSAKMi40My4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
