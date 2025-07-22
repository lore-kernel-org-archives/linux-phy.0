Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68022C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 05:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaI7c4gIvqmmnsYPMdljBi6B8cIeKXjSS92/MzN3g/E=; b=C2slgw2JDRYsVu
	toshGYxZBSpGGLoVs6H2MVKyPkiMUHcRgiwd2L71Nel9qgQcA2zQez3hGVk9wmJWsLIGwyW2y26ih
	GVrALj2bsb2eyLRMG01G+6NR8VCPdNnzC4Fj+MF869iv8b/5+Q7YVarIVkhq4s9zfVPe94GnMu36g
	VYJDQBNQpyihV1tGimWhe4rdfBsHTFxz5x0xmo2QOKJ7wS+KnlQuRkhZFizZaIV5If4iFuyM9gRCf
	7SO8Yz028+zbhJ7hddljNDhcz0FZUfjy/oOG5kP+SucgenzzkFLgEhqWTbBp3Qn06Qv3PV6YL6eTW
	+DufvzNP43mYFoNdvjsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue5Kr-00000001JhT-3svP;
	Tue, 22 Jul 2025 05:14:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue5Jy-00000001Jd3-2FG1
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 05:13:48 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M4dj5S016432
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 05:13:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z34TxU6fYQCKQc+baHKHcHj+cYrndlzHUSD8HFvi1b4=; b=VnmMUUc9K5t8rfUV
	5HrKEcBgn0nu9plJ5pCimjapo8/XZeHHwcjwLwReZ+9JVUdxc0DVHz5EDYLsP0GW
	q+oRSmJ4B4nhBPh6cRU5NugIHjkh5GagJgV7IqVtTOhpRpymD7iOKMRAeJF2QA77
	1FWG1SRPvwL6kYwtiIoJ/O3xh0Cd4K2t+Jwud1PmBn686kdnFTb3ZgUsoGnEpAs8
	/yzowqMOmIZh8BqQX9IpP8SmcJIXqjUVoearaSMjgOH3GpKx46k13av4PtsMHBCv
	dH//q0zD7WV7NnlPX7SR3V5mTMY7sJaHewKbAjzDRtJBVpFLGLnuNHn4A5QEhz5S
	zVR7cw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451fyud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 05:13:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3139c0001b5so4576037a91.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 22:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753161223; x=1753766023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z34TxU6fYQCKQc+baHKHcHj+cYrndlzHUSD8HFvi1b4=;
        b=Hc4I+6x/QTB8rxOmTHrT416DZFRBG2PaBCLR1oCUbgzZP0iszkDvicvaDBM7afkVK6
         7dYZ1NHkyn5+PIi6Wi7VGKho2pnTuJvg6FY5WHyNnIqj2u4AaQivGNRg3jV5AUsNE71A
         IDBH2SanBQTDut1mrrK4wNTRhRShXwUfQbiVSEoKQat0OAhdSZyUJqwUnBYtTPfRsDuX
         gBFn1YX5SPfqWWKYwntIryobMJg4s3zQ0DiYo46r8u4T+q1vkLH/nn8XHZu6hd6//8yt
         F0Jl/P7EBkb3LNMfwSLFObZvhnhic9eUzyqn4hkQCfDr8AIlf5yeKv8SPAbvCHBxZ2Ho
         1F5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwJ/DHBGkXs3YRsiW3ULgGDJHxMB9rrceG0ABJy4FETCUx7vvvw9dWQsBLBetRSXg7E7sdg/ZH1Fw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyupz6/Sv/PDysug15Y1BhcHoCWg4SsGjc3FIkZ/9D7zzdhFK7w
	KOPjyZefKIWmvioUzRkXJiW7TB0RUdXb8xhNhHlcW710c0rO6KSxBCJqZJwrWvPWZbr+Wo6FX7k
	50HiquGwqD+wn8sdwYmo3jYbgx26MflOTS6I6fjIV7Yh7Cff3h0vRs8oyu1O2De0jJGTN
X-Gm-Gg: ASbGncszXCx81ekmfZYiAzbAZRoAttRajA2YS+YfW7ygpijohuzIv4JO/oA1q+zIrcz
	sv2UqHSRKjTMmfffKGrS71lBSOF3VzIItkjHr9ZhNY+w/jpBrvu5/J+WtTiKx+VaqUmtVSNfjMe
	wYymABvRgV5WQ+NXFVzQu6Tt8FVmHIw3u9zD7TbLm7vszpuIfhtVw3wEyIB6eLLzjlUQH33MoMy
	qPKBrIz2bDGN6tpc2S0KvUtdsuSs/EMdY7lo1l/T00ETQ54e2Duk3/eDEk5JxiWsxSSZVgoPvOu
	bFV2Fkr402Zvlfq0Hmhc3c9nI20Z/GDgJiDEdSEUi0jU2UXcgnHxL7RFe1q9IReVyS4dOOA9fY7
	/9Gwyh9l9mp82fpG8Yw==
X-Received: by 2002:a17:90b:514d:b0:311:b413:f5e1 with SMTP id 98e67ed59e1d1-31c9f45b1admr28828731a91.32.1753161223348;
        Mon, 21 Jul 2025 22:13:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYhGavDIomiy1NdWktoEpkCMViHWPVGYxxFEsASyjKD6sDrdiu2WKJkwtvY2LAXOjFjGQ2tQ==
X-Received: by 2002:a17:90b:514d:b0:311:b413:f5e1 with SMTP id 98e67ed59e1d1-31c9f45b1admr28828682a91.32.1753161222854;
        Mon, 21 Jul 2025 22:13:42 -0700 (PDT)
Received: from [10.110.120.151] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45083sm7115312a91.2.2025.07.21.22.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 22:13:42 -0700 (PDT)
Message-ID: <c7342ed4-5705-4206-8999-e11d13bea1f2@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 13:13:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
 <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f1e08 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=MOqbobo4jd3P9B9bkYgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: c5pD74jXJVC0yLQorsjj6BiPfJyLl8Wc
X-Proofpoint-GUID: c5pD74jXJVC0yLQorsjj6BiPfJyLl8Wc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA0MCBTYWx0ZWRfX53pKvssc1WsG
 JWlD0fYutfMgLO9HlM7U7IC1ekYE4u2FAZxX8dKqvYbP/3qzRkbRvafadYGpr3OIv7jHUk6ea3G
 CGhFU9XtnJAsO482elTlTCf7O5LFWf/nr5SStCLisk/f7X5ydQVuFzq73huM1jneiVg5ZBAFcDp
 iyC950VeHaiK3cXrnNzsy79EFc39e4qO9ia6AlROJwBzV8gSJ5oemBjDzYe8aq1MQcM5R5yXF3t
 dXQOzL6UisLDosSWRtrsJ1d4lMWIAaxXaF1u6B+KldH3y0NOZIri1x67job5txLwfYr4ukRx/9R
 6k1YyJhQ3WW03m6v6cs/f5rpz1bFrDiRKb1C6XD2Fg07k0+6eFgqk1HIc9pFSMLT1g3EPaPMuTU
 VlqbkuYOBlVRkNEsFfCI3/dpWgEZsNi493ONS+nzuLma8FpwzPZ9KRYLxiIx3UOdV7NUJaNH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_221346_780769_D9A69477 
X-CRM114-Status: GOOD (  22.61  )
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

Ck9uIDcvMTgvMjAyNSA2OjUzIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDcvMTgvMjUg
MTI6MDIgUE0sIEpvaGFuIEhvdm9sZCB3cm90ZToKPj4gT24gRnJpLCBKdWwgMTgsIDIwMjUgYXQg
MDQ6MTc6MTdQTSArMDgwMCwgWml5dWUgWmhhbmcgd3JvdGU6Cj4+PiBnY2NfYXV4X2NsayBpcyB1
c2VkIGluIFBDSWUgUkMgYW5kIGl0IGlzIG5vdCByZXF1aXJlZCBpbiBwY2llIHBoeSwgaW4KPj4+
IHBjaWUgcGh5IGl0IHNob3VsZCBiZSBnY2NfcGh5X2F1eF9jbGssIHNvIHJlbW92ZSBnY2NfYXV4
X2NsayBhbmQKPj4+IHJlcGxhY2UgaXQgd2l0aCBnY2NfcGh5X2F1eF9jbGsuCj4+IEV4cGFuZGlu
ZyBvbiB3aHkgdGhpcyBpcyBhIGNvcnJlY3QgY2hhbmdlIHdvdWxkIGJlIGdvb2Qgc2luY2UgdGhp
cyBkb2VzCj4+IG5vdCB5ZXQgc2VlbSB0byBoYXZlIGJlZW4gZnVsbHkgcmVzb2x2ZWQ6Cj4+Cj4+
IAlodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzk4MDg4MDkyLTE5ODctNDFjYy1hYjcwLWM5
YTVkM2ZkYmI0MUBvc3MucXVhbGNvbW0uY29tLwo+IEkgZHVnIG91dCBzb21lIGRlZXAgbWVtb3Jp
ZXMgYW5kIHJlY2FsbGVkIHRoYXQgX1BIWV9BVVhfQ0xLIHdhcwo+IG5lY2Vzc2FyeSBvbiB4MWUg
Zm9yIHRoZSBHZW40IFBIWSB0byBpbml0aWFsaXplIHByb3Blcmx5LiBUaGlzCj4gY2FuIGJlIGVh
c2lseSByZXByb2R1Y2VkOgo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS94MWU4MDEwMC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTgwMTAwLmR0c2kK
PiBpbmRleCBhOWE3YmI2NzZjNmYuLmQ1ZWY2YmVmMmIyMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20veDFlODAxMDAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS94MWU4MDEwMC5kdHNpCj4gQEAgLTMzMTIsNyArMzMxMiw3IEBAIHBjaWUzX3BoeTog
cGh5QDFiZTAwMDAgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInFj
b20seDFlODAxMDAtcW1wLWdlbjR4OC1wY2llLXBoeSI7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZyA9IDwwIDB4MDFiZTAwMDAgMCAweDEwMDAwPjsKPiAgIAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzNfUEhZX0FVWF9DTEs+LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzNfQVVYX0NMSz4sCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19QQ0lFXzNfQ0ZHX0FI
Ql9DTEs+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnRjc3IgVENTUl9Q
Q0lFXzhMX0NMS1JFRl9FTj4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwm
Z2NjIEdDQ19QQ0lFXzNfUEhZX1JDSE5HX0NMSz4sCj4KPiA9PT4KPiBbICAgIDYuOTY3MjMxXSBx
Y29tLXFtcC1wY2llLXBoeSAxYmUwMDAwLnBoeTogcGh5IGluaXRpYWxpemF0aW9uIHRpbWVkLW91
dAo+IFsgICAgNi45NzQ0NjJdIHBoeSBwaHktMWJlMDAwMC5waHkuMDogcGh5IHBvd2Vyb24gZmFp
bGVkIC0tPiAtMTEwCj4KPiBBbmQgdGhlIChub24tUEhZXylBVVhfQ0xLIGlzIG5lY2Vzc2FyeSBm
b3IgYXQgbGVhc3Qgb25lIG9mIHRoZW0sIGFzCj4gcmVtb3ZpbmcgaXQgY2F1c2VzIGEgY3Jhc2gg
b24gYm9vdAo+Cj4gS29ucmFkCkhpIEtvbnJhZCwgSm9oYW4KCkkgdHJpZWQgcmVtb3ZlIFBIWV9B
VVhfQ0xLIGluIHNhODc3NXAgcGxhdGZvcm0gbGlrZSB0aGlzLCBhbmQKaXQgd2lsbCBjYXVzZSBh
IGNyYXNoIG9uIGJvb3QuIEFuZCBJIGNoZWNrZWQgdGhlIGNsb2NrIGRvY3VtZW50YXRpb24KZm9y
IHNhODc3NXAgYW5kIGZvdW5kIHRoYXQgdGhlIFBIWV9BVVhfQ0xLwqAgaXMgYWxzbyByZXF1aXJl
ZC4KClRoZSBjaGFuZ2VzIGFyZSBhcyBmb2xsb3dzOgotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc2E4Nzc1cC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVw
LmR0c2kKQEAgLTc4ODcsNyArNzg4Nyw3IEBAIHBjaWUxX3BoeTogcGh5QDFjMTQwMDAgewogwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxzYTg3NzVwLXFt
cC1nZW40eDQtcGNpZS1waHkiOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9
IDwweDAgMHgxYzE0MDAwIDB4MCAweDQwMDA+OwoKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMV9QSFlfQVVYX0NMSz4sCivCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzFfQVVYX0NMSz4sCiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1BD
SUVfMV9DRkdfQUhCX0NMSz4sCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZnY2MgR0NDX1BDSUVfQ0xLUkVGX0VOPiwKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfUENJRV8xX1BIWV9SQ0hO
R19DTEs+LAoKQlJzClppeXVlCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
