Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C678CAC5B5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4v35dYK0eTxZLFWfJ7BmsHdJk/CvsBiicxErOgGw8Q=; b=bMtka67WROtiLe
	GM7umdKzngJEwwxX+j9uiywRIFeXK5l99PsUpStOvyguLGoEex/04UsAzm/NjAlUPNY2grJbaVLqG
	fGjW3tX8UjkC/EcMq8Vi+DHtPyJS/4hwHK1ljlq/RxlNKXnn4RVqm0PVNo4XA1T509kdAt453wmtP
	zjYFtnRDwjFNmUrwr3rG30frhPdf6Kh4caeYuidLqxKUl+rqPSw9b9jw77YGv/B+kC1UeWhmJfduT
	wYX5fip5MSAhz/qLNo05O/HmA+EO+kvYzcAi3TZoAC6UaXkVvU4kIFz8crJz/Keby8P2PcRucRj8Z
	azNjV7HWjm30lYvVj8ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v36yE-00000001QgC-2TQ3;
	Mon, 29 Sep 2025 06:02:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v36yB-00000001Qf9-07hG
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:02:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SKdlF6012062
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c84sJy294lRAsvdayLiR1jZLIpH9uaxLIGDdgwQe68o=; b=QvCqcVRQzLPsbawx
	s58RDUfGswe4txwaxDvqG8Rr0YstVhEvzpYtaw18yl+ljSv2A9AFa+gnvXerbPVS
	ogWP0HXpP7HPbpUieUNh6Fr4CpTbyPcOCEuFz9yaBW4x4p8QZkOIZ3koQlXRHJ5l
	GL5Du2iVZS81Q83/tq3gTb750URX8G/4dBtel4uNq4cCcU1aQMYq0GxPZ4oVqLgX
	ALSGbfLHApjQdhNXVCwzfiqgeFjX7OPYH/a3gIYtz6m4cfWVNQrdEtJeoIicJac3
	eY/HKQ0sUMxNTXEbjEYnCkGBpA6EFKdigFb3vR//5y6WNkOnLEYuOEXkW2avFOiT
	HDiHwA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5m3qx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:02:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2697410e7f9so97451275ad.2
        for <linux-phy@lists.infradead.org>; Sun, 28 Sep 2025 23:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759125760; x=1759730560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c84sJy294lRAsvdayLiR1jZLIpH9uaxLIGDdgwQe68o=;
        b=wEWfb5ZgNPLpUM9TKwdvL6jx7vHVuTEfWQFYakweAGz/PTbx4LHV17rC7buMrcTuWQ
         5HTRqX18ocCGARhHrs2rEm96aINUiZqNXt7ggtuSHiKNtIzTpRnZdUe6nhFhwTkjpHIf
         J/VT3LYea5wGucP9I0aTQDLcR/mW0NGXZCtF2c2QZCk7TsbcRVHnICBdU9lRwWijW0Tz
         BPyvCJcl2OgGaOdEwFqU5ZMPWzt7djsFHuOJakEMphMlc4SDGCtP3oatwVWRSmjti8Cl
         xzl+XlH5ULe2UJmOoysaM2+HHCOozdBUAqgzn/IyUwMNIXm7xrcHOuxI8xg1Vkt4TMAz
         BoDg==
X-Forwarded-Encrypted: i=1; AJvYcCV07uy4vvGkNKEka0bXBjJ09OlU89Qpdyisd+Zb2vL7ozbRPAD4gpF2eIaHEWaxJWWr4Bg2c4eJK48=@lists.infradead.org
X-Gm-Message-State: AOJu0YzF6QyWRLfOj2FJIH2OtebHdujanvUm2SdOqpg3PQxntDIJ+o24
	LAbaE/PPbK2bwoV/uxFvP9zQIAKgg00bwQNSrk/Ne14odLoMnDUtgKmPOi5iYPzi/kicEUkzGim
	NPvpQ7VAKVwUI8VPFQH5UMvRmvt2CLVnO/i8bWAyJr4MElUy48IU9re5gbTUTtUNxU0Jg
X-Gm-Gg: ASbGncsTZ03YdEDkfJnnGQ0zDckmMcnkImw+GsLl/M8/f6L29qf40DvF5NmJQ24DCBN
	ATR5UnWnxYEMIlds5Is5mRwrVPUZRo57vFJPmtRAXvek1Wsu82C6TaHeFbjnlF0rR2b+rkkJ+ZX
	n9L5+DsLpEiOOS/vuH+5Mo4d+/vHvn0hJlWDqwSOzdAqX/HMQEOTOJWpxE58lvviAlQZUJYfsb/
	sI1vDKgzamMphoMogj2wuiNDbPn9U69a0BIeBAsByKW8w6+jMRIFcMWCuKYg6RxlHrOzhxzRrIi
	MdafttzilWnKhmpJbAQ7zZ1zDJj+WMI+v1X4V8jJ/ePZvdJN0dQK8982915D8bNqWFWWYbaZAbJ
	UISERZUIBTlUKbM7uK5RG/viOQUkSTAID3Iw=
X-Received: by 2002:a17:903:38cd:b0:27e:d4a8:56ad with SMTP id d9443c01a7336-27ed4a85a82mr165732655ad.61.1759125759959;
        Sun, 28 Sep 2025 23:02:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJ70u453/jxOUh+G0kG8uuIYknKfil7i8PuspUU15QgIdesSV8W24AVurbFTeHJcYwjL3wwA==
X-Received: by 2002:a17:903:38cd:b0:27e:d4a8:56ad with SMTP id d9443c01a7336-27ed4a85a82mr165732105ad.61.1759125758595;
        Sun, 28 Sep 2025 23:02:38 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882133sm120557875ad.89.2025.09.28.23.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:02:38 -0700 (PDT)
Message-ID: <7f4bcb3e-2469-41d0-b3a7-392ffcbba515@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:02:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
 <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
 <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
X-Proofpoint-GUID: bwGAo6yZrFreSgiSKGc736wRklqMM2zP
X-Proofpoint-ORIG-GUID: bwGAo6yZrFreSgiSKGc736wRklqMM2zP
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68da2101 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nQufxc_MvbZzznxDM0EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX12sCCLtJU516
 zZlwQaEQXUFioEoIXINPFZZ/zDgNG3td2G/r09yyucO7AFhRrdtkQulnRklzJAwNrBNMtdO+Fz+
 Czg1pkLplpQQLlhxztLRN51nh9vmZAxcBgumBMPiGdtKaMxTKBs3uQJHzqiq7T5ffqPHO6tZLoq
 HV1HW9eBlpOUZ9Hilk6GTzM4+BrHA8ewwsbI+grHWQpJ+3v2OkC9x19q37HnOxGkYNz5IWrJVxC
 h9Esh7Oi62IOg0Kxnfq3zGUKqNt3Wu0dmpwBP++kdBY+3i3sDqVSONoCJ2efGYzIFsJzURL25I3
 rX82Aby+8hNOuMpgaTDYtpdsl/cfTBYauvJU9n9zE4NCtTZ3aXfZOtLyt8OOfAEPK2n3Eze9lLs
 wmw7QBVUN2V87Rh0lwSnpFb7T3N3jg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_230243_189351_2D8B6C30 
X-CRM114-Status: GOOD (  15.17  )
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

CgpPbiA5LzI1LzIwMjUgOTo0NiBBTSwgS3J6eXN6dG9mIEtvesWCb3dza2kgd3JvdGU6Cj4gT24g
VGh1LCAyNSBTZXB0IDIwMjUgYXQgMDg6MzUsIEppbmd5aSBXYW5nIDxqaW5neWkud2FuZ0Bvc3Mu
cXVhbGNvbW0uY29tPiB3cm90ZToKPiAKPj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSxtMzEtZXVzYjItcGh5LnlhbWwgfCA2ICsrKysrLQo+PiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLG0zMS1ldXNiMi1waHku
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxtMzEtZXVz
YjItcGh5LnlhbWwKPj4gaW5kZXggYzg0YzYyZDBlOGNiLi5hYjFjZGVkYWMwNWMgMTAwNjQ0Cj4+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxtMzEtZXVz
YjItcGh5LnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9xY29tLG0zMS1ldXNiMi1waHkueWFtbAo+PiBAQCAtMTUsNyArMTUsMTEgQEAgZGVzY3JpcHRp
b246Cj4+Cj4+ICBwcm9wZXJ0aWVzOgo+PiAgICBjb21wYXRpYmxlOgo+PiAtICAgIGl0ZW1zOgo+
PiArICAgIG9uZU9mOgo+PiArICAgICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGVudW06Cj4+
ICsgICAgICAgICAgICAgIC0gcWNvbSxrYWFuYXBhbGktbTMxLWV1c2IyLXBoeQo+PiArICAgICAg
ICAgIC0gY29uc3Q6IHFjb20sc204NzUwLW0zMS1ldXNiMi1waHkKPiAKPiBUaGlzIHRpbWUgbWF5
YmUgd2l0aG91dCBIVE1MOgo+IAo+IFRoZXJlJ3Mgbm8gc3VjaCBjb2RlIEFGQUlLLCBiZWNhdXNl
IG9yaWdpbmFsIHdvcmsgd2FzIG5ldmVyIHJlc2VudCBhbmQKPiBuZXZlciBtZXJnZWQKPiAKPiBZ
b3UgY3JlYXRlIHNvbWUgY29udm9sdXRlZCBiaWcgZGVwZW5kZW5jeSBjaGFpbiBhbmQgSSBzdWdn
ZXN0IGZpcnN0IHRvCj4gZmluaXNoIHVwc3RyZWFtaW5nIHByZXZpb3VzIHByb2plY3QsIGJlY2F1
c2Ugb3RoZXJ3aXNlIGl0J3MgZGlmZmljdWx0Cj4gdG8gcmV2aWV3IGFuZCBpbXBvc3NpYmxlIHRv
IGFwcGx5LgoKVGhlIFNNODc1MCBVU0Igc3VwcG9ydCB3YXMgcGFydGx5IG1lcmdlZCwKVGhlIHFj
b20sc204NzUwLW0zMS1ldXNiMi1waHkgYmluZGluZyB3YXMgbWVyZ2VkIGluIGNvbW1pdCAxMTY2
YTJjYTA5MDBiZWFmYmU1YjZkMWJiMzU3YmMyNmE4NzQ5MGYxLApMaW5rOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjUwNTI3LXNtODc1MF91c2JfbWFzdGVyLXY2LTItZDU4ZGUzYjQxZDM0
QG9zcy5xdWFsY29tbS5jb20KClRoYW5rcywKSmluZ3lpCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
