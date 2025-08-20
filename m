Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9A4CA0EED
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 06:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OrmdJ4BFtuiCeuSjFPB33fR+pJk5tfsdFZeZkiyoJc=; b=m6otg69SVQr5xY
	ajWXOXkDWf2Qq8e3CYEHHax8g7UFBl8Y4BqVyZFIWmOHrmJ7KfXiNuz24DmJ9GKjhxeOAs3PwscPG
	S5dTglR1FviZIjVrm0OtMFrPQ9ZhcbQ0x6hGkrVTQlGdvhPzNyXVgF2kOfZpNdTem7QPcL+azzhEJ
	BluL6UmffGvE2s6hzLHtN84As+z3nGzq1EWX1p2MMqRU/iZ5Dm5LZL8qD5EnDLmfxAp3TGYFWkVRj
	9bHOqoAQ2tPBlSrNcDtxUiOnsusl3PlwFEfjszqgYqhj8leFWPIzTyGfGimQVdDkiMImVIBtD5yJV
	aMb0UtHCAti2Z6mTRZkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocDF-0000000CUXc-1Baz;
	Wed, 20 Aug 2025 06:22:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoc8w-0000000CUCB-1puW
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 06:17:55 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oc5E025141
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 06:17:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/bkq+cHdJt1KbvcxQfB2RcSUjegt/SMBaHSxlr5BbPY=; b=pPBJM4IkUCc7AjW7
	5WE+DTBsliH63oe2SkgY7IWE7ea6YBExexcpAEv4g2cxsh5z440YLP5GHikjCcRH
	sP78jWNxVbTnLOJNOYQJhHFwuLhbrNmWlEN3o4P76SDKg60VgeEDWN+6hfzRN9+R
	UDRivJivIbkejr8DpPcpRM4SK9Pg8fE+qJK7K5VCfy4wXVcBiKqZtni0wlqiGL2H
	Vt8SFuYzPGFv/ikxQrF2ToxtUpmv+bwgfSmXUs7hP5efZA9JD/pJTu7BINgSdaTw
	utACXgdJXiUw6cxSSPQZZ7pnZejbW65wLVwVY8c9qt2Di5ZzuokdOyuGxdn+lOQg
	KyXKCw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a8m31-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 06:17:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2445805d386so67395865ad.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 23:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755670673; x=1756275473;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/bkq+cHdJt1KbvcxQfB2RcSUjegt/SMBaHSxlr5BbPY=;
        b=Rl6MORIbkw4HfK3c/+tMPJccYJAVnIrbphhj7AskqFpMJjHdY/01qwMtZoKQFt6okf
         VoV+ztsedjsvHkXTcAwVpDcKAmkQmSj1vdIOL3+OlHkuDHvqQ6d2sxpHY5FLJ3r4b9C7
         VzU9+aEPTW7gbgG7WoyKf/c84EC2CFQi+1A1Wom0cC7Kc9ry18J+H+pGsB7yToxewo93
         ni4YD7JUPByfS9kCt6HtfpM+Qo2YdvKySTcq6/IcNKAsGPQq/fzLrbHpk8/DiCK6bPiO
         uixbZTFJ4mz/EV0Rso1TAh0N+RD6083No/TmR6wxEZQWoKU4YMEl7PZWhtXRyfdxjiC7
         oWKw==
X-Forwarded-Encrypted: i=1; AJvYcCXml4j3nsWcG0gUJlJQbCYCZ4mDPqG6JQ6QqXr/Scb66zZNOxQA2AKxS4LFgwXjRKPgrfx9Mgue+z0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGkOoM75GrOXG94GVQB1XrYBCmo0URWejDhOTpXEcGGBo/U50i
	z86vWCNoXwEmdsA+cZzdGRHQ8WC8cx74nobX05FVfD/tDAgFWw2s2c9C/iRc73D5p/vszWBH12X
	xc+8DVVLIqCwqdxdCYbIeJX2+8M8a4y9TMgU9nH9ouhvHkOmgCPuaCcISvJ0hNQgQj8J8
X-Gm-Gg: ASbGncu/EGNEQyC0QS/bfSPmxPt6HsKpqCTayonsu4hOLFUUtbnp+JI+hhIw9E9pJd7
	RAidz6MaO6mbQI8KnnCINP6I48wVbJXE2lqya8DMh/zB89Umrd1c7bdjTa1Kt1XeBshxUHrOm+4
	XzNjyERQSjOuOLe4A3th4dfXxQUXtrc5yDpa9rMiPWUlJi6LuZ1NHu+aAfkKTE8MDGc9ktHV2MV
	+wE1ZcU49G6+2L4QdIKpGi6uYyEx/yQZeYgp7fMqMu3xqfFV7Dpo+3sHZkLjCP/ei7IHtYHayy7
	pVdfs7UCY33J4/MOQTwLC/crCe7ROTMCdCyJJCGCedAIm8jhj9gSKt6cXAZKSzvaAwSqPgUz6no
	DaZ/bkU1joPYpt1W6r1IEKFUW5Mlb2Q==
X-Received: by 2002:a17:902:db11:b0:244:99aa:5484 with SMTP id d9443c01a7336-245ef22750bmr21232825ad.33.1755670672772;
        Tue, 19 Aug 2025 23:17:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsKwESvuXAmKPzOJGduohtMXI7XkJlUbHq5xijCZfUS3+Y+d26WTnyjnHki+tQuTQXR8vTwA==
X-Received: by 2002:a17:902:db11:b0:244:99aa:5484 with SMTP id d9443c01a7336-245ef22750bmr21232595ad.33.1755670672285;
        Tue, 19 Aug 2025 23:17:52 -0700 (PDT)
Received: from [10.249.96.170] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e8ab7b2dfsm2046761b3a.38.2025.08.19.23.17.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 23:17:51 -0700 (PDT)
Message-ID: <33468410-69e5-4144-88e0-cc34a736c0e4@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 14:17:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
 <6zlydkdgmowqg7cv5eeoaf7mrpnhzokyvhh5xasvznqaxnhdji@xol3jiz2lzld>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <6zlydkdgmowqg7cv5eeoaf7mrpnhzokyvhh5xasvznqaxnhdji@xol3jiz2lzld>
X-Proofpoint-ORIG-GUID: zrzPxaStsql551QDKLdX12wETgIeCiJm
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a56891 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=sH0VmbEyIx9rPeTW6gYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: zrzPxaStsql551QDKLdX12wETgIeCiJm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3z2Wx6zvXXqZ
 aA9WJkAAQGzQ7ZZQdh1hih1qQldxdVilF/rTxcnX/tog/DXWVr2uh7X95Ro8grmWxvwzlEjYIPG
 S7jCi+ITdc34WaWgankIIx6Jm0PQr++CSYEUYZSNjwhg0UDYy+KsHTtZFoHm/yP7WzxpFAX9zxs
 v8nt1AgmHz1t+nmCa4xbHrBrHJICFvDa3iR0pCr86vigtE0Tu2urwk8GbqEirlZ9Xn4uqJUoTS8
 GWoEL9RrTOCoH2h3bzBbGdiH+TjC8kJSraDVl/ka8u9ALBJGU/m9etEkF0XpmzyuI5vU5NV7DMR
 7RyrKI8/kho/HCzVTV6cFujWnA+ZE6gs0ptgaJEYMTOIStko2+jBt5Olp6zg613hEJiokxeSEpa
 rFB5p2AnGE9xkWjqwPCEc37FZk4zvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_231754_482385_5C09CB20 
X-CRM114-Status: GOOD (  18.86  )
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

T24gOC8yMC8yMDI1IDI6NDMgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVHVlLCBB
dWcgMTksIDIwMjUgYXQgMDI6NTI6MDhBTSAtMDcwMCwgV2VuYmluIFlhbyB3cm90ZToKPj4gRnJv
bTogUHJ1ZGh2aSBZYXJsYWdhZGRhIDxxdWljX3B5YXJsYWdhQHF1aWNpbmMuY29tPgo+Pgo+PiBB
ZGQgc3VwcG9ydCBmb3IgR2VuNSB4NCBQQ0llIFFNUCBQSFkgZm91bmQgb24gR2x5bXVyIHBsYXRm
b3JtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQcnVkaHZpIFlhcmxhZ2FkZGEgPHF1aWNfcHlhcmxh
Z2FAcXVpY2luYy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHdlbmJpbi55YW9A
b3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjaWUuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtcGNpZS5jCj4+IGluZGV4IDk1ODMwZGNmZGVjOWIxZjY4ZmQ1NWQxY2MzYzEw
Mjk4NWNmYWZjYzEuLmU0MjJjZjY5MzJkMjYxMDc0ZWQzNDE5ZWQ4ODA2ZTllZDIxMmMyNmMgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+PiBAQCAtOTMs
NiArOTMsMTIgQEAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBwY2llcGh5X3Y2X3JlZ3NfbGF5
b3V0W1FQSFlfTEFZT1VUX1NJWkVdID0gewo+PiAgIAlbUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05U
Uk9MXQk9IFFQSFlfVjZfUENTX1BPV0VSX0RPV05fQ09OVFJPTCwKPj4gICB9Owo+PiAgIAo+PiAr
c3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBwY2llcGh5X3Y4XzUwX3JlZ3NfbGF5b3V0W1FQSFlf
TEFZT1VUX1NJWkVdID0gewo+PiArCVtRUEhZX1NUQVJUX0NUUkxdCQk9IFFQSFlfVjhfNTBfUENT
X1NUQVJUX0NPTlRST0wsCj4+ICsJW1FQSFlfUENTX1NUQVRVU10JCT0gUVBIWV9WOF81MF9QQ1Nf
U1RBVFVTMSwKPj4gKwlbUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MXSAgID0gUVBIWV9WOF81
MF9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MLAo+PiArfTsKPj4gKwo+PiAgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBtc204OTk4X3BjaWVfc2VyZGVzX3RibFtdID0gewo+PiAg
IAlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjNfQ09NX0JJQVNfRU5fQ0xLQlVGTFJfRU4sIDB4
MTQpLAo+PiAgIAlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjNfQ09NX0NMS19TRUxFQ1QsIDB4
MzApLAo+PiBAQCAtMzIyOSw2ICszMjM1LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3Bj
aWVfb2Zmc2V0cyBxbXBfcGNpZV9vZmZzZXRzX3Y2XzMwID0gewo+PiAgIAkubG5fc2hyZAk9IDB4
ODAwMCwKPj4gICB9Owo+PiAgIAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGNpZV9vZmZz
ZXRzIHFtcF9wY2llX29mZnNldHNfdjhfNTAgPSB7Cj4+ICsJLnBjcyAgICAgICAgPSAweDkwMDAs
Cj4gRXZlbiBpZiB0aGUgZHJpdmVyIHVzZXMgb25seSBQQ1MgcmVncyBmb3IgOC41MCBjdXJyZW50
bHksIEknZCBzdWdnZXN0Cj4gZGVzY3JpYmluZyB0aGUgd2hvbGUgcGljdHVyZSBoZXJlLiBPdGhl
cndpc2UgaXQgbWlnaHQgYmFja2ZpcmUgbGF0ZXIsIGlmCj4gd2UgYWRkIG9mZnNldHMgZm9yIG90
aGVyIGJsb2NrcyBsYXRlciBhbmQgdGhleSB3b24ndCBtYXRjaCB0aGUgb25lcyB1c2VkCj4gZm9y
IEdseW11ci4KCk9L77yMd2lsbCBhZGQgdGhlbS4KCj4KPj4gK307Cj4+ICsKPj4gICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIGlwcTgwNzRfcGNpZXBoeV9jZmcgPSB7Cj4+ICAgCS5s
YW5lcwkJCT0gMSwKPj4gICAKPj4gQEAgLTQyNTgsNiArNDI2OCwyMiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnIHFtcF92Nl9nZW40eDRfcGNpZXBoeV9jZmcgPSB7Cj4+ICAgCS5w
aHlfc3RhdHVzICAgICAgICAgICAgID0gUEhZU1RBVFVTXzRfMjAsCj4+ICAgfTsKPj4gICAKPj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgZ2x5bXVyX3FtcF9nZW41eDRfcGNpZXBo
eV9jZmcgPSB7Cj4+ICsJLmxhbmVzID0gNCwKPj4gKwo+PiArCS5vZmZzZXRzICAgICAgICA9ICZx
bXBfcGNpZV9vZmZzZXRzX3Y4XzUwLAo+PiArCj4+ICsJLnJlc2V0X2xpc3QgICAgID0gc2RtODQ1
X3BjaWVwaHlfcmVzZXRfbCwKPj4gKwkubnVtX3Jlc2V0cyAgICAgPSBBUlJBWV9TSVpFKHNkbTg0
NV9wY2llcGh5X3Jlc2V0X2wpLAo+PiArCS52cmVnX2xpc3QgICAgICA9IHNtODU1MF9xbXBfcGh5
X3ZyZWdfbCwKPj4gKwkubnVtX3ZyZWdzICAgICAgPSBBUlJBWV9TSVpFKHNtODU1MF9xbXBfcGh5
X3ZyZWdfbCksCj4+ICsKPj4gKwkucmVncyAgICAgICAgICAgPSBwY2llcGh5X3Y4XzUwX3JlZ3Nf
bGF5b3V0LAo+PiArCj4+ICsJLnB3cmRuX2N0cmwgICAgID0gU1dfUFdSRE4gfCBSRUZDTEtfRFJW
X0RTQkwsCj4+ICsJLnBoeV9zdGF0dXMgICAgID0gUEhZU1RBVFVTXzRfMjAsCj4+ICt9Owo+PiAr
Cj4+ICAgc3RhdGljIHZvaWQgcW1wX3BjaWVfaW5pdF9wb3J0X2Ioc3RydWN0IHFtcF9wY2llICpx
bXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZ190YmxzICp0YmxzKQo+PiAgIHsKPj4gICAJY29u
c3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPj4gQEAgLTUxMTQsNiArNTE0
MCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFtcF9wY2llX29mX21hdGNo
X3RhYmxlW10gPSB7Cj4+ICAgCX0sIHsKPj4gICAJCS5jb21wYXRpYmxlID0gInFjb20seDFwNDIx
MDAtcW1wLWdlbjR4NC1wY2llLXBoeSIsCj4+ICAgCQkuZGF0YSA9ICZxbXBfdjZfZ2VuNHg0X3Bj
aWVwaHlfY2ZnLAo+PiArCX0sIHsKPj4gKwkJLmNvbXBhdGlibGUgPSAicWNvbSxnbHltdXItcW1w
LWdlbjV4NC1wY2llLXBoeSIsCj4+ICsJCS5kYXRhID0gJmdseW11cl9xbXBfZ2VuNXg0X3BjaWVw
aHlfY2ZnLAo+PiAgIAl9LAo+PiAgIAl7IH0sCj4+ICAgfTsKPj4KPj4gLS0gCj4+IDIuMzQuMQo+
PgotLSAKV2l0aCBiZXN0IHdpc2hlcwpXZW5iaW4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
