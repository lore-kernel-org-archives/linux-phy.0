Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B7EC88E40
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 14:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OO+oNtPBUXqpOlB1Mq0kdKD1h+lOg1BmUetanGPAFQ=; b=Ff+pKF4eNgqsme
	4KHiomaVZS3NSZ+Fxhjz+Em4N17uXyR4Cq1MG9gfLPXnSnmwOWhoyb2CPzd1DwEYeyZuuBJ32PSZe
	xW321GlikAU3RJSmXhwUS4A/TeFOzOj7uVRemDmgFQA71TGZMStRhEgpgOb6CRSITPKhi0xoAF7i/
	Uz6c0hRh/sNiyooSKTSfHgC8XAch0bxF9GTxRadSB3GeVn/doUJBdxVfVOAGEQ1kt/XYAZmHe06vw
	C6YOEInD4jWLXeoNxvWBPSoUH3yop5yx+LmAaxRo//EPphpW4E0cphtR7ACSTFMbiRDSHZ7WZC4dX
	4Z4jkHpOiOe4lGqc9WqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4J83-0000000BwUG-2Jf5;
	Wed, 09 Sep 2026 14:18:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4J80-0000000BwQW-1L0T
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 14:18:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BU4Md1723123
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 14:18:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ijz3qU9AqWAuODrFeJR7HLdMoz7Cv3StevXcIGLyJWM=; b=Y/J+12eKrVozqs4C
	HnJljqDlqmXV6Yxb3DzRrQXaBUUidRg8ZtB+2Ud8DkIaU1723WZAeSRojyDes+5S
	7lO4JcZI1Qb1faE86cSlbiQ/J6HSbD28LKekL3Opnr9mNI+fxAQV+EmHOi7cd9Mq
	YYLuEu0r3FCX8u8qwnyzKrjSiPLjKq6w0DTMvXKPiI0n+EkOZpYfHbucgDH43wg9
	GQGNMW4kezL8mfYWq26JR5VkurJriD9wMxe+sj90akccX5esHGizG62V/at55IXx
	BihoaMpINlvaWPjaaQ0+MSNfX7ZjEjbEyuKK0dwB1uArFbdgt9dShGgx7bByuNrB
	axahVQ==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gk5cns15b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 14:18:18 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7ec3b429610so9140046a34.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 07:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788963498; cv=none;
        d=google.com; s=arc-20260327;
        b=s1rxNyGDzzEcezBmVqdoMZXhcnWGfd45qwEB8gC7azg9EqU6LZtqywl3fkSrNHw1my
         FKPUQVCWMIvcoVLZrJWG7xZ//dOev2DjVaQhnXm8EUizdSnSCaxT2JHQSCAcNjzrKHjQ
         Nj3/MER48swv/WwQwXts516KqwglP+Pj5PEpd/LD5eqkWWNKS8rtWAqDZZNNR/WJdNsE
         e9m43S2+I6p2jfTHSnDEX6RkZuUX1/9aYF1PEu2BgJC+115VIrp1CsXDJvBfNBy8rZud
         5TAoBWEwwoveggMYDcpEuf/1uWw4slmspqAGY+kN+zhKEECfbwic64QIe2SEUR6C8w9l
         RYSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ijz3qU9AqWAuODrFeJR7HLdMoz7Cv3StevXcIGLyJWM=;
        fh=WU4eEW/JsBO6B9bL8UrTBjosxdpfYDT7iLh+5oq/dzY=;
        b=GVYDHbLRvZAQDtrUDZASbtr5YMW84EtzI8YSEM0wRRxz7p1zQXrl0J+PIYqQbwfEWf
         ZWArLKT9GFkdd0zhSxNEHk6Vz271PPmWPk+zKj8QmCE8ORKf806d2CPs8YxzOhA99p5v
         OE/H8j2zK4QHaDYzRPGjt7YIeXXBCiFzgUzKu1K90AFnEQVqvqLhsTRczR32GR3E7J4w
         v8abvfaFgfNmCjCOPaRbm/n47h+gvrbpS+FppgFmrnH199Mm9SAjES8wszbP8NjH2F2H
         wARLjKTaMaPsno/JkyK1sYysswenLJtA1rxlUlKVU5alRzxWnxAG8rVKuKJLeJ7PL3hd
         ruRg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788963498; x=1789568298; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ijz3qU9AqWAuODrFeJR7HLdMoz7Cv3StevXcIGLyJWM=;
        b=KQ5hofFlJiOTeOus0u5/iu0K7DxcOda2I54+3dHP6S6VO/FjHX5zGNG6tCE74rAG+P
         QV9h1F2Z7eMWJoNA7u5bwrjtlQ6nVpGI9Iqt16bM/dx9rJixxoYKIhCUuWrW1bTxkkTq
         iyP83jfcJevheY1WJtAicVRDP0KApz6Y4m4MYWIZh3QCAQHhT3uTxcdegEx3Ej1HcJvT
         NVxO1P6uXbQvIlw0lRGEHy9SGroP1oSyyUE60KH/mnYIaRfSVIzJJ4zTtWtZt0+AVjH2
         4ewZz+Uh+W+fDEm5VDQCNDEPp7cqcuX3eaIdH5I6GI/MRrp7+AUALdetKdnobh5rGdcS
         PFrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788963498; x=1789568298;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ijz3qU9AqWAuODrFeJR7HLdMoz7Cv3StevXcIGLyJWM=;
        b=XkPc+agpoFCIb6PiOKK4NUITAudEAVYezuF01qDnEp74C4lrdhSg9onwCnvRxu5d1f
         zEY79B24srifdl36RVb+LpNZ3N5v589yQ2y6hMww/bo51fmYIJeAHhNdXqm8wteTFprS
         OePQUNIS8H8RH8SsRddPEn27YysPPdzwFV/QtjXh/aXYL1gQKqyngeJg1kijP3KKBm0R
         Nq0JBvmW/DdChZOi7In/EPQ2kZhurhvm2zwmEE6kWpkkiihTWj+nkzWb7tG0b/xYHaxh
         LivSuRg6rFfjwR0sEhafdpJT+ZJ1OHzhwia7ie11KTNhQM9Wlh3GNwsSBYuH7GoTHV/6
         4lmQ==
X-Forwarded-Encrypted: i=1; AKwUvByKNep4LWYerf6mrqeG+JSOWbPV6oIA3X6bEd2ktPxZIgEDjm3/h1AYzne5jUoKPc3Q0fsRWcVLQ/k=@lists.infradead.org
X-Gm-Message-State: AFuF++k78lNDYXs7YpZEc/pyD48zFORth/8w20yXqlhgUnYef5nyzZDm
	ycO/UY7wEBw1kC93FKr8hhb1ajmTogxRtzq0ucoEPFyUsxyKhbkNPe5oiyRhYVVhi3x3GnRK+Fg
	qkC51ZvWvfM6FFQSwoQ0rC990VEnJr3wggbi4JlxCfHrh1XTU5rFMTfVefFyp583RDybdwHRffg
	+phr8sDqE9zX7vpf7JGfsEkbrDnZRapGNBTUSqNjcrvsA=
X-Gm-Gg: AYBFou0c5fzobXHnq+gEH4rK8sobLvuT+W6vczAiWEgs5rbWSAMborNJn6EmvXQ+4hi
	MJvF8+ix2vsp3KwXVn+Kw7CAbJwGHuom+oxe5/qBuviE4x1QAy5dEm6B4pDx4gocrJ7XsGv4KQ1
	PTQnictJdsU4C8GisHV0MB6H+5ULItd45exutdYVZH4YgTb0qJ47jR0BmLLPMBSqYCEKrNViFgn
	dzhyzcekdbm8nq7+E991Gl57RILoweFyL1nwt87RKfjgNJAlhqhBnOH5EOAUIzT2F+ZytXfYZY=
X-Received: by 2002:a05:6820:f028:b0:6b7:46fa:1693 with SMTP id 006d021491bc7-6bee715a830mr787273eaf.40.1788963498117;
        Wed, 09 Sep 2026 07:18:18 -0700 (PDT)
X-Received: by 2002:a05:6820:f028:b0:6b7:46fa:1693 with SMTP id
 006d021491bc7-6bee715a830mr787232eaf.40.1788963497568; Wed, 09 Sep 2026
 07:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org> <20260903-x1e-csi2-phy-v17-1-26606fa9a039@linaro.org>
In-Reply-To: <20260903-x1e-csi2-phy-v17-1-26606fa9a039@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 9 Sep 2026 16:18:06 +0200
X-Gm-Features: AcwNN1XeMPnSrK1BZl7UqBZ6XmAK9pb6YYlBOZlSZsTEkGUJatiu98s12aEsERY
Message-ID: <CAFEp6-1De_S+BwpDkH=Hkwc2YWe8m-cPBxkKCL86f=1fJ57xHg@mail.gmail.com>
Subject: Re: [PATCH v17 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-GUID: rCLXycu3U_rmVEQ8AJnq73gOCxjpzaE1
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDE2MCBTYWx0ZWRfXx97EQZDKoh/B
 A+PYw0MecEWmD3KuS1xh2Qe2Ybn5GOTKUF7p+gpX7WJpu41d46rZy6JnDeJyTtbt6w/dYWQk1dp
 mfTSliJ3imvAgcIQ0YjKzDpUPIcWAA0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDE2MCBTYWx0ZWRfX5VpLyTAKyPEG
 4SkJDs0DQOZIQIo7v5vKkthpXZdSN7M+EfnxYyAU4jzMKqCbB/V8RitOM4aC+P2I/qwGrz4cUNA
 6kxhBERL1JUFpQmZlTMHByzXCVgp76Y8oN8eWxMrbwYjQqIqthS3TgDK/JcXvC7Uvm7zLJZ+vTu
 Zat5N/tl19WtffeyGpe0FxHYEULDLVp6QJYob6STi7fCNwrzEGhbhcrQPW9/cI3Fx1sUSK0lniG
 ZvMwSX7OKUKzgxLOJIxy2YDhd/1tCFQ3++pRt8pU+5PEeKv1Nsl1oZExKNy/Wh8p/dMuGPMknvH
 b5D2y9O1K4xBeYqeb08vD2GyxT7/l8ePctGZ+yKrM5xwPjydpK0UjFv5UpXsq45FdUKc1QWOyxA
 nvHgZlCf6nz+OAA/wDV4eEqnN783AtfMyW8zEO2zWeDD0mJrnRIwUSVSuu4+eUmqD84jMXrYue6
 W7Nv5zZ80LgdNoL/xOw==
X-Authority-Analysis: v=2.4 cv=S+jpBosP c=1 sm=1 tr=0 ts=6aa16aaa cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=a1JshUc-Vb5zx_Q6SrkA:9 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: rCLXycu3U_rmVEQ8AJnq73gOCxjpzaE1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609090160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_071820_477069_55F92191 
X-CRM114-Status: GOOD (  20.81  )
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

SGkgQnlyYW4sCgpPbiBUaHUsIFNlcCAzLCAyMDI2IGF0IDEwOjU04oCvUE0gQnJ5YW4gTydEb25v
Z2h1ZQo8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gQWRkIGEgYmFzZSBz
Y2hlbWEgZm9yIHRoZSBNSVBJIENTSTIgUEhZcyBvbiBRdWFsY29tbSBTb0NzLiBUaGlzIFBIWQo+
IHN1cHBvcnRzIGJvdGggRFBIWSBhbmQgQ1BIWSBvcGVyYXRpb24uIEEgc3BlY2lhbCBtb2RlIG9m
IERQSFkgb3BlcmF0aW9uIC0KPiBjYWxsZWQgdmFyaW91c2x5IHNwbGl0LW1vZGUgb3IgY29tYm8t
bW9kZSBhbHNvIGFsbG93cyBmb3IgdHdvIHNlbnNvcnMgdG8gYmUKPiBjb25uZWN0ZWQgdG8gb25l
IFBIWS4KPgo+IFRoZSBzY2hlbWEgc3VwcG9ydHMgYm90aCB0aGUgRC1QSFkgYW5kIEMtUEhZIGJ1
cyB0eXBlcy4KPgo+IFN1Z2dlc3RlZC1ieTogVmxhZGltaXIgWmFwb2xza2l5IDx2bGFkaW1pci56
YXBvbHNraXlAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxi
cnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KCkNoZWNrZWQsIGFuZCBzb21lIG9mIHRoZSBzYXNo
aWtvIGNvbW1lbnRzIHNlZW0gd2VsbC1mb3VuZGVkLgoKUmVnYXJkcywKTG9pYwoKPiAtLS0KPiAg
Li4uL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwgICAgICAgfCAyMjEg
KysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMjEgaW5zZXJ0aW9ucygr
KQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjk5MzI3MWM0MmZhMDYKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgw
MTAwLWNzaTItcGh5LnlhbWwKPiBAQCAtMCwwICsxLDIyMSBAQAo+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0K
PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvcWNvbSx4MWU4MDEwMC1j
c2kyLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBRdWFsY29tbSBYMUU4MDEwMCBTb0MgQ1NJMiBQ
SFkKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gQnJ5YW4gTydEb25vZ2h1ZSA8Ym9kQGtlcm5l
bC5vcmc+Cj4gKwo+ICtkZXNjcmlwdGlvbjoKPiArICBRdWFsY29tbSBNSVBJIENTSTIgQy1QSFkv
RC1QSFkgY29tYmluYXRpb24gUEhZLiBDb25uZWN0cyBNSVBJIENTSTIgc2Vuc29ycwo+ICsgIHRv
IFF1YWxjb21tJ3MgQ2FtZXJhIENTSSBEZWNvZGVyLiBUaGUgUEhZIHN1cHBvcnRzIGJvdGggQy1Q
SFkgYW5kIEQtUEhZCj4gKyAgbW9kZXMuCj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGli
bGU6Cj4gKyAgICBjb25zdDogcWNvbSx4MWU4MDEwMC1jc2kyLXBoeQo+ICsKPiArICByZWc6Cj4g
KyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMwo+ICsK
PiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4g
KyAgICAgIC0gY29uc3Q6IHRpbWVyCj4gKyAgICAgIC0gY29uc3Q6IGFoYgo+ICsKPiArICBpbnRl
cnJ1cHRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgb3BlcmF0aW5nLXBvaW50cy12Mjog
dHJ1ZQo+ICsKPiArICBvcHAtdGFibGU6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArCj4gKyAgcG93
ZXItZG9tYWluczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBUaXRhbiBU
b3AgR0RTQyAtIFRpdGFuIElTUCBCbG9jaywgR2xvYmFsIERpc3RyaWJ1dGVkIFN3aXRjaCBDb250
cm9sbGVyLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBNTUNYIHZvbHRhZ2UgcmFpbAo+ICsgICAg
ICAtIGRlc2NyaXB0aW9uOiBNWEMgb3IgTVhBIHZvbHRhZ2UgcmFpbAo+ICsKPiArICBwb3dlci1k
b21haW4tbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogdG9wCj4gKyAgICAg
IC0gY29uc3Q6IG1tY3gKPiArICAgICAgLSBjb25zdDogbXgKPiArCj4gKyAgdmRkYS0wcDktc3Vw
cGx5Ogo+ICsgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gYSAwLjlWIHJlZ3VsYXRvciBzdXBw
bHkgdG8gYSBQSFkuCj4gKwo+ICsgIHZkZGEtMXAyLXN1cHBseToKPiArICAgIGRlc2NyaXB0aW9u
OiBQaGFuZGxlIHRvIDEuMlYgcmVndWxhdG9yIHN1cHBseSB0byBhIFBIWS4KPiArCj4gKyAgcG9y
dHM6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCj4g
Kwo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgcG9ydEAwOgo+ICsgICAgICAgICRyZWY6IC9z
Y2hlbWFzL2dyYXBoLnlhbWwjLyRkZWZzL3BvcnQtYmFzZQo+ICsgICAgICAgIGRlc2NyaXB0aW9u
Ogo+ICsgICAgICAgICAgU2Vuc29yIGlucHV0LiBBbHdheXMgcHJlc2VudC4gQSBzaW5nbGUgc2Vu
c29yIGlzIGRlc2NyaWJlZCBieSBhCj4gKyAgICAgICAgICBzaW5nbGUgZW5kcG9pbnQgd2l0aCB0
aGUgRC1QSFkgY2xvY2sgbGFuZSBhdCBwb3NpdGlvbiAwIGFuZCBvbmUgdG8KPiArICAgICAgICAg
IGZvdXIgZGF0YSBsYW5lcy4KPiArCj4gKyAgICAgICAgICBEUEhZIHNwbGl0IG1vZGUsIHdoZXJl
IHR3byBpbmRlcGVuZGVudCBzZW5zb3JzIHNoYXJlIHRoZSBzYW1lIFBIWSwKPiArICAgICAgICAg
IGlzIGRlc2NyaWJlZCBieSB0d28gZW5kcG9pbnRzLCBlYWNoIHdpdGggaXRzIG93biBjbG9jayBs
YW5lIHBvc2l0aW9uOwo+ICsgICAgICAgICAgZW5kcG9pbnRAMCB3aXRoIGNsb2NrLWxhbmVzID0g
PDA+IGFuZCBvbmUgb3IgdHdvIGRhdGEtbGFuZXMgYW5kCj4gKyAgICAgICAgICBlbmRwb2ludEAx
IHdpdGggY2xvY2stbGFuZXMgPSA8Mz4gYW5kIG9uZSBkYXRhIGxhbmUuCj4gKwo+ICsgICAgICAg
IHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiArCj4gKyAgICAgICAgcGF0dGVyblByb3Bl
cnRpZXM6Cj4gKyAgICAgICAgICAiXmVuZHBvaW50KEBbMDFdKT8kIjoKPiArICAgICAgICAgICAg
JHJlZjogL3NjaGVtYXMvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy55YW1sIwo+ICsgICAgICAgICAg
ICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKyAgICAgICAgICAgIHByb3BlcnRpZXM6
Cj4gKyAgICAgICAgICAgICAgYnVzLXR5cGU6Cj4gKyAgICAgICAgICAgICAgICBlbnVtOgo+ICsg
ICAgICAgICAgICAgICAgICAtIDEgIyBNRURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPiArICAgICAg
ICAgICAgICAgICAgLSA0ICMgTUVESUFfQlVTX1RZUEVfQ1NJMl9EUEhZCj4gKyAgICAgICAgICAg
ICAgICBkZWZhdWx0OiA0Cj4gKwo+ICsgICAgICAgICAgICAgIGNsb2NrLWxhbmVzOgo+ICsgICAg
ICAgICAgICAgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgICAgICAgICAgICAgZGF0YS1sYW5lczoK
PiArICAgICAgICAgICAgICAgIG1pbkl0ZW1zOiAxCj4gKyAgICAgICAgICAgICAgICBtYXhJdGVt
czogNAo+ICsgICAgICAgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgICAgICAgIG1pbmlt
dW06IDEKPiArICAgICAgICAgICAgICAgICAgbWF4aW11bTogNAo+ICsgICAgICAgICAgICAgICAg
ZGVzY3JpcHRpb246Cj4gKyAgICAgICAgICAgICAgICAgIERhdGEgbGFuZSBwb3NpdGlvbnMgZm9s
bG93aW5nIHRoaXMgZW5kcG9pbnQncyBjbG9jawo+ICsgICAgICAgICAgICAgICAgICBsYW5lLiBQ
b3NpdGlvbnMgYXJlIGEgcGVyLXBvcnQgbG9naWNhbCBudW1iZXJpbmcsIG5vdAo+ICsgICAgICAg
ICAgICAgICAgICBwYWNrYWdlIHBhZCBvciBiYWxsIHBvc2l0aW9ucy4KPiArCj4gKyAgICAgICAg
ICAgIHJlcXVpcmVkOgo+ICsgICAgICAgICAgICAgIC0gZGF0YS1sYW5lcwo+ICsgICAgICAgICAg
ICAgIC0gcmVtb3RlLWVuZHBvaW50Cj4gKwo+ICsgICAgICAgIGFsbE9mOgo+ICsgICAgICAgICAg
LSBpZjoKPiArICAgICAgICAgICAgICByZXF1aXJlZDoKPiArICAgICAgICAgICAgICAgIC0gZW5k
cG9pbnRAMQo+ICsgICAgICAgICAgICB0aGVuOgo+ICsgICAgICAgICAgICAgIHByb3BlcnRpZXM6
Cj4gKyAgICAgICAgICAgICAgICBlbmRwb2ludEAwOgo+ICsgICAgICAgICAgICAgICAgICBwcm9w
ZXJ0aWVzOgo+ICsgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhbmVzOgo+ICsgICAgICAgICAg
ICAgICAgICAgICAgY29uc3Q6IDAKPiArICAgICAgICAgICAgICAgICAgICBkYXRhLWxhbmVzOgo+
ICsgICAgICAgICAgICAgICAgICAgICAgbWF4SXRlbXM6IDIKPiArICAgICAgICAgICAgICAgIGVu
ZHBvaW50QDE6Cj4gKyAgICAgICAgICAgICAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgICAg
ICAgICAgICAgY2xvY2stbGFuZXM6Cj4gKyAgICAgICAgICAgICAgICAgICAgICBjb25zdDogMwo+
ICsgICAgICAgICAgICAgICAgICAgIGRhdGEtbGFuZXM6Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICBpdGVtczoKPiArICAgICAgICAgICAgICAgICAgICAgICAgLSBjb25zdDogNAo+ICsgICAgICAg
ICAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgICAgICAgICAgLSBlbmRwb2ludEAwCj4gKyAgICAg
ICAgICAgIGVsc2U6Cj4gKyAgICAgICAgICAgICAgcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgICAg
ICAgICAgICAgICAiXmVuZHBvaW50KEAwKT8kIjoKPiArICAgICAgICAgICAgICAgICAgcHJvcGVy
dGllczoKPiArICAgICAgICAgICAgICAgICAgICBjbG9jay1sYW5lczoKPiArICAgICAgICAgICAg
ICAgICAgICAgIGNvbnN0OiAwCj4gKwo+ICsgICAgICBwb3J0QDE6Cj4gKyAgICAgICAgJHJlZjog
L3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4gKyAgICAgICAgZGVzY3JpcHRp
b246IE91dHB1dCB0byB0aGUgQ0FNU1MgQ1NJRCBjb250cm9sbGVyLgo+ICsKPiArICAgIHJlcXVp
cmVkOgo+ICsgICAgICAtIHBvcnRAMAo+ICsgICAgICAtIHBvcnRAMQo+ICsKPiArcmVxdWlyZWQ6
Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2st
bmFtZXMKPiArICAtIGludGVycnVwdHMKPiArICAtIG9wZXJhdGluZy1wb2ludHMtdjIKPiArICAt
IHBvd2VyLWRvbWFpbnMKPiArICAtIHBvd2VyLWRvbWFpbi1uYW1lcwo+ICsgIC0gdmRkYS0wcDkt
c3VwcGx5Cj4gKyAgLSB2ZGRhLTFwMi1zdXBwbHkKPiArICAtIHBvcnRzCj4gKwo+ICthZGRpdGlv
bmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3Fjb20seDFlODAxMDAtY2FtY2MuaD4KPiArICAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWdjYy5oPgo+ICsgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiArICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9tZWRpYS92aWRlby1pbnRlcmZhY2VzLmg+Cj4gKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcWNvbSxycG1ocGQuaD4KPiArCj4gKyAgICBwaHlA
YWNlNDAwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHgxZTgwMTAwLWNzaTItcGh5
IjsKPiArICAgICAgICByZWcgPSA8MHgwYWNlNDAwMCAweDIwMDA+Owo+ICsKPiArICAgICAgICBj
bG9ja3MgPSA8JmNhbWNjIENBTV9DQ19DU0lQSFkwX0NMSz4sCj4gKyAgICAgICAgICAgICAgICAg
PCZjYW1jYyBDQU1fQ0NfQ1NJMFBIWVRJTUVSX0NMSz4sCj4gKyAgICAgICAgICAgICAgICAgPCZj
YW1jYyBDQU1fQ0NfQ09SRV9BSEJfQ0xLPjsKPiArICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3Jl
IiwKPiArICAgICAgICAgICAgICAgICAgICAgICJ0aW1lciIsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAiYWhiIjsKPiArCj4gKyAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ3NyBJUlFf
VFlQRV9FREdFX1JJU0lORz47Cj4gKwo+ICsgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8
JmNzaXBoeV9vcHBfdGFibGU+Owo+ICsKPiArICAgICAgICBwb3dlci1kb21haW5zID0gPCZjYW1j
YyBDQU1fQ0NfVElUQU5fVE9QX0dEU0M+LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICA8JnJw
bWhwZCBSUE1IUERfTU1DWD4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIDwmcnBtaHBkIFJQ
TUhQRF9NWD47Cj4gKyAgICAgICAgcG93ZXItZG9tYWluLW5hbWVzID0gInRvcCIsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIm1tY3giLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJteCI7Cj4gKwo+ICsgICAgICAgIHZkZGEtMHA5LXN1cHBseSA9IDwmdnJlZ19sMmNf
MHA5PjsKPiArICAgICAgICB2ZGRhLTFwMi1zdXBwbHkgPSA8JnZyZWdfbDFjXzFwMj47Cj4gKwo+
ICsgICAgICAgIHBvcnRzIHsKPiArICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4g
KyAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICsKPiArICAgICAgICAgICAgcG9ydEAw
IHsKPiArICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPiArICAgICAgICAgICAgICAgIGNzaXBo
eTBfaW46IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICBidXMtdHlwZSA9IDxNRURJ
QV9CVVNfVFlQRV9DU0kyX0RQSFk+Owo+ICsgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhbmVz
ID0gPDA+Owo+ICsgICAgICAgICAgICAgICAgICAgIGRhdGEtbGFuZXMgPSA8MSAyIDMgND47Cj4g
KyAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZzZW5zb3Jfb3V0PjsKPiAr
ICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAgICAgICBw
b3J0QDEgewo+ICsgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICsgICAgICAgICAgICAgICAg
Y3NpcGh5MF9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5k
cG9pbnQgPSA8JmNzaWRfaW4+Owo+ICsgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAg
fTsKPiArICAgICAgICB9Owo+ICsKPiArICAgICAgICBjc2lwaHlfb3BwX3RhYmxlOiBvcHAtdGFi
bGUgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+
ICsKPiArICAgICAgICAgICAgb3BwLTMwMDAwMDAwMCB7Cj4gKyAgICAgICAgICAgICAgICBvcHAt
aHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICByZXF1aXJlZC1v
cHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmcnBtaHBkX29wcF9sb3dfc3ZzX2QxPjsKPiArICAgICAgICAgICAgfTsKPiAr
ICAgICAgICB9Owo+ICsgICAgfTsKPgo+IC0tCj4gMi41NS4wCj4KPgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
