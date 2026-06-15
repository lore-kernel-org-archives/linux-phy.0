Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EE4CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxmyHWZjyRDmjTRqHLLtd1H71OAGDD+FpUZihkLqu1M=; b=C+YN+AghmTko4K
	E9UMaxR0ET/1Yr9zrERNRbGEgEQ9c3M4CCefAwMbVm4xY+jN1XnXTwAdz504x5AwHryLKotWBmsiS
	tiLrUDKnsWw7N1Xf55r2Gz0GcAuqea943SUHSjBI8wP9br1jKVxqOWgVJ2+ThnmrYM0ngShBc3tzh
	3laH3aqK4GYTujSKq2/Y1+3M6yNsNzr6UwNMhLLLGVR+CZ+joMjfvU5Q7jXaZKJa+2hiuhemoR+x3
	JzwYmcKkDE4vTR3gN8Hm1y2LKIF9oJuqlPI2/KK0Wxk+zKp1EF6LpavpkUyQHsIVCEDAPtbH729r2
	m+RKLO2oRPTmFKICT91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0EI-0000000DeQC-1JIN;
	Mon, 15 Jun 2026 05:51:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0EF-0000000DePk-3wYP
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:51:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F1kK7N3308110
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 05:51:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	13MV5+oGu9Y4QSitcFuhVSklhqqLnHoOgTil+bf8rdY=; b=R9li4ae+Vk/Iss32
	J4asgu/AaZCOoEjhYJJcZCAxfumUZuVwEJGGj5lRbQqIEWGI+lhZO+YPgph48OBn
	NdvFDGou6r/9QhLO1P8YsYDGh5O7Is1G/ZrrUObW9L4NkUeOsPo0MDazKvblf7rE
	zELvNJuMIrvx0z4hySPC7KXII04IWtoI+QfxYLXeBM08Wjt3xZhqskyAo+XpkMkR
	nyNXnhS9fCLVKktQpTmmhnJYBSDxXiH/zvwYWdBFXpE7bP9+bmW7hRg0+RejxzP0
	kow7P6sjaFHLBg9qL/0Ys1JwRLJ5oQFC2XsxeLVtHjaVbjMqMOgjy3rvPm0++9qX
	ofEbTQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eryc6wsjp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 05:51:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2c2b64850easo10542805ad.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Jun 2026 22:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781502681; x=1782107481; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13MV5+oGu9Y4QSitcFuhVSklhqqLnHoOgTil+bf8rdY=;
        b=BXDOMPUJD8bvFOSwis44CXCq0REmvogeKgG9zcmb2w3ABpVqOM1h3MebSlWxCzTisC
         1anUQNTaJOK0yVeX1PLVizF3+8ir9rtU6kTkW/nheORvIp9obEaIp6WbZxOk8cdUbQPd
         HWSVs1P4XIVQ/ibCJCyot4POoYhT+zVT8CQ2TlkWJYR7cPLVWvw/QvkJmAhvgk+yU2V+
         7a0fbyFqmwa9500Bzo7lCrZCIOsz9UaEo+fRcPCLqMiOvuPSv2X74YcOtDGRX9iHqQHP
         CS2UbdETL5wlsCh8X9ftkUTDUiQZy1V4GAoh2fCAMSocTaT1nDcMsdvbtyOMMYNxSQN1
         6iow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781502681; x=1782107481;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=13MV5+oGu9Y4QSitcFuhVSklhqqLnHoOgTil+bf8rdY=;
        b=FCt+v0pjXOH/MapZOo/Qtv4Y003UFoOJSxzodV30hgCNJkHDRvKAeygTZmwLXo098o
         SpjG3Y4303CgmfgoJ+VPjG6NP04ZViPcXa9uN6VDJ2LVJ46NcsHxHNbk7isKmO944KLR
         DkLzSE1Rt4MrbpglI43QKJEgOFoU+wTkTkyF4yktU76bm5yKxS1lfLnFbN3Lehjaev4c
         ILTtWUjsPtZbVaTj7QgoWs4hf+MpXJQzBlBRSl6Tn7oMBrfsQBibE5cKsMQ+tLVP6DgM
         4trCFkTVzdBrXgdxb9L11713p6amR3NPAWAfF01vqVPZgtPXOnTpqXMTF1lI0RF1UkiI
         Yasw==
X-Forwarded-Encrypted: i=1; AFNElJ9zlHEoDX4qYLRK1Wt89YSdnAwdX6M0tvoKpOnGhG0ha0BPT4Z3jyLqPS3XIC/k41Md5jiooK3yhI4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxppz4PWUBipFAC5W3OYgDSfC/LO/WVVZ2jENYGkzAVrkRlFOAU
	1Lmg7c+BYaKZPWtdbk22scCbD/8BDp4ykpWnoaDwePksfBwK3bA0D0zLTUGUvU6RpcnmZkuXzEU
	kC3oWf3kJztCnBQHf53FWtnzqjkS8+CiLPbja+N7ZtzNWorJ5IYzZp8a9snuHc/ulUABH
X-Gm-Gg: Acq92OEcI+zhFrz3TalTRegGB23vlGRHB0C+bG/EQzCM5AME6W+n/ymSW6+iXRQCrsn
	A6ruVQo8TraR3pwbmrBHo/wfNNqSHse22YE0piM4NoxicNastaPvuW/4Fee/bMZ3kZcptPOz3qU
	YCG7qmm8q9emwZcDYSgh+sh74q8WUvhXuRC20Oemwa6XtPgcnlC7zOHeBKY7ivAFiVSm+NKoRJL
	cH6WYiB/HBZp5Lc4ohZcUg1wkn2wEW+ip6w1z22qIbaSv30Ckax7mpSqgx+OKzxEUg2eWVpFuZQ
	NqfzfKG9x1Bwk4WoIn8zZHbUDIWx7ASSg19oXExl/VESEaYOe6YnMcrbCrwLuTwxnZ4ETPu4kba
	Et+4/w/TwAZ3kn3GhOMRukLxTdJ40NQfF4bw/Kry96cPQdu0Wx8gG
X-Received: by 2002:a17:902:ebc7:b0:2bd:5ab:af95 with SMTP id d9443c01a7336-2c664082585mr114141685ad.0.1781502681075;
        Sun, 14 Jun 2026 22:51:21 -0700 (PDT)
X-Received: by 2002:a17:902:ebc7:b0:2bd:5ab:af95 with SMTP id d9443c01a7336-2c664082585mr114141265ad.0.1781502680609;
        Sun, 14 Jun 2026 22:51:20 -0700 (PDT)
Received: from [10.92.170.188] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c432c8ce89sm89192275ad.57.2026.06.14.22.51.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jun 2026 22:51:20 -0700 (PDT)
Message-ID: <1403607d-a277-4300-abe4-56648b3c2a1f@oss.qualcomm.com>
Date: Mon, 15 Jun 2026 11:21:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: Vinod Koul <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com,
        bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
 <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
 <airUb6wT-I-7cOXK@vaman>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <airUb6wT-I-7cOXK@vaman>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA1OCBTYWx0ZWRfX8MkNGLNYZyct
 Gq0xqt9RZ3fKmvt4/pgzbXG3J68msfZXrLxPEGXYSgsMkxLEkYyTc4IDaO9qQZpEr5e6zLzMlRm
 GL3d9BP7xlZKdW2FEikF9ocf6q39OxI=
X-Authority-Analysis: v=2.4 cv=Oop/DS/t c=1 sm=1 tr=0 ts=6a2f92da cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=YxLorS6-WnmH7tsLkT0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: RkC2C5A2iY9IV70SdFt7AQPsut3k1INC
X-Proofpoint-ORIG-GUID: RkC2C5A2iY9IV70SdFt7AQPsut3k1INC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA1OCBTYWx0ZWRfXxeHEd/MMEfpl
 uOBqHEp2J/GxRxsykdKKY5EJHT/yi3Czp+FK3pnbkaOv9zGoIJoGI09JLhzBznNhWJCJZN8sul1
 omEZoa8aeIXtyoyAAabgNUFxikiqqXg99ttqxPp7w+o7QDUTHzf/Xhuk5/03h5QKk2Z5xGkZNMV
 1PHKzop3qyBX+H5TdhOtJ6Hqk1hAKtQsbOYoM6tRD7TSZYaiY/rzfuvhD02vq4p2bxQFt/rgq7H
 MHDYvTdxJWLjknH8/LLXFLKrM2VRco1/uGHjhagq6NCFMzyx2f7zCKP5fogmWaolmAXaW69N5Xm
 2pHp7Te8EGLlLzyYDAIbU17tdzDFbbyBuSvrOCosxwhLoeZWdYfPNJqCHaSj17KB+hTbxZv1JYR
 JYgn8oFZ8qpts8nxzS/V8oSGImkFYhdxgZwNNixtTjDMt9pHaTsOi+CHvK1KkY2It08ly0GUGLS
 g/raj+aF93CNpFefIdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_01,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606150058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_225124_118476_F527A284 
X-CRM114-Status: GOOD (  12.81  )
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

CgpPbiA2LzExLzIwMjYgODo1OSBQTSwgVmlub2QgS291bCB3cm90ZToKPiBPbiAyNi0wNS0yNiwg
MTQ6MzksIHBhbGFzaC5rYW1iYXJAb3NzLnF1YWxjb21tLmNvbSB3cm90ZToKPj4gRnJvbTogUGFs
YXNoIEthbWJhciA8cGFsYXNoLmthbWJhckBvc3MucXVhbGNvbW0uY29tPgo+Pgo+PiBBZGQgdGhl
IGluaXQgc2VxdWVuY2UgdGFibGVzIGFuZCBjb25maWcgZm9yIHRoZSBVRlMgUU1QIHBoeSBmb3Vu
ZCBpbgo+PiB0aGUgSGF3aSBTb0MuCj4gCj4gVGhpcyBmYWlscyB0byBidWlsZCBmb3IgbWUgb24g
cGh5L25leHQKPiAKPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXVmcy5jOjI0Ogo+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYzoxODc4OjI2OiBlcnJvcjog4oCYUVNFUkRFU19WOF9DT01fUExMX0lWQ09fTU9ERTHi
gJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhR
U0VSREVTX1Y2X0NPTV9QTExfSVZDT19NT0RFMeKAmT8KPiAgMTg3OCB8ICAgICAgICAgUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX1Y4X0NPTV9QTExfSVZDT19NT0RFMSwgMHgxZiksCj4gICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4K
PiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tbW9uLmg6MjI6Mjc6IG5vdGU6
IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYUU1QX1BIWV9JTklUX0NGR+KAmQo+ICAgIDIyIHwg
ICAgICAgICAgICAgICAgIC5vZmZzZXQgPSBvLCAgICAgICAgICAgIFwKPiAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXgo+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYzoxODc5OjI2OiBlcnJvcjog4oCYUVNFUkRFU19WOF9DT01fQ01OX0lFVFJJTeKAmSB1
bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmFFTRVJE
RVNfVjZfQ09NX0NNTl9JRVRSSU3igJk/Cj4gIDE4NzkgfCAgICAgICAgIFFNUF9QSFlfSU5JVF9D
RkcoUVNFUkRFU19WOF9DT01fQ01OX0lFVFJJTSwgMHgwNyksCj4gICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21tb24uaDoyMjoyNzogbm90ZTogaW4gZGVmaW5pdGlvbiBv
ZiBtYWNybyDigJhRTVBfUEhZX0lOSVRfQ0ZH4oCZCj4gICAgMjIgfCAgICAgICAgICAgICAgICAg
Lm9mZnNldCA9IG8sICAgICAgICAgICAgXAo+IAo+IEFuZCBzbyBvbi4gTG9va3MgbGlrZSBRU0VS
REVTX1Y4X0NPTV9QTExfSVZDT19NT0RFMSBldGMgYXJlIG5vdCBkZWZpbmUuCj4gUGxlYXNlIHJl
YmFzZSB0ZXN0IGFuZCBzZW5kIGFnYWluCj4gCgpIaSBWaW5vZCwKClN1cmUsIHdpbGwgcmViYXNl
IGFuZCBjaGVjay4gVGhhbmtzLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
