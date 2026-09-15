Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B02CC88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 05:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSjvaWBYys5KTFz33ghbTR9f0l3d58aMICQOdeIRp0c=; b=DSyXTvLR3t60Hq
	f/apTMCKcZPXkk6bUZd1bIy7Z/ACZEQPYgTVdrnHcajXPyGOamBGz3o4wU4oWhjgt84bP2V/tBS2+
	yssqipffKo4BAwV5XnmmaXHvAONXxofBnWRmO7H5P2LsLoz6wAKyH5bHMEZZI/8RjbIrPW82djEn2
	sKncSzm7iBPCw3gV8/VgzrC8bbPhjpv2s21WQ0ZMEdCQ4V6et5fhs43+sB4lOH6RochmjKanNhDGa
	KbXtw2GGX2we/oOye6ML6SFQL9FqQmnGKNxOcDZAkAR+5a5pvcZ0yzGJiPF482LkgOapKjTLYVYk/
	SEoOIJoykbm7EvLYYF3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Ldl-00000005EsL-4BNc;
	Tue, 15 Sep 2026 05:23:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Ldk-00000005Erx-3ZkV
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 05:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ahgAtWxFRwy6cq9ng7VxTyalhlNA7iHoeeWQVniYX/M=; b=YXvarFFNCS5rRrhoOzd36pc6nf
	SLgjtpTsgzNMgvmSZMKceN449qzai4K22ryci8gmrI9NbCwRB+XuyAXGHYGWmUoAh8YIwnE/hJ0a0
	fW24SHvl+vtYcWB5NVBgM5KURbb94mfl8ThH7hY+hthH12V79thzRar75n+SkIq2opT/FVgomtsjd
	+E/ZQtXcS6HAV4noX8r5XBndNI7FsloJv0Zv6YpYp1i+BAGtrhkxbrDo1zi2HC3NBWPR+5y3GREIK
	pcwD/N0UDH5OcztAlunRM1sYvKGBhG3s1Umn8j9ettIpFhs0eLmJvU3qEHfeax+i0h/i8D8HAtDCO
	Lz9ZOGfA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6LdW-00000006Ha3-0Lyh
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 05:23:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F3RejS1758519
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahgAtWxFRwy6cq9ng7VxTyalhlNA7iHoeeWQVniYX/M=; b=FLxnoxmxl1XZ9BBw
	QGUKqn7DwFY+nscNlV5bzxzE5NYptx/u/ZetxDR/DgLEXefEfoq4lElggx52WT0W
	WzYRzr5x+bWp0cGDSYDzLWPNYrXpq3VXboGjrFcYsWps9HwrJC2upheBRjYPVRwi
	oinwl4uZMM1Rne54+hldIo+E36rnd2Fj6r6YFrLRlHKz0d5LBh6nQHufFmGuLNi6
	A/qxihasUaHfrc8tHFRMAAtvbk0T4GPrt1893cotV7QMPVwx/H+TLo69Zw2m+e4+
	58YPcFlU51DoJP+0tzZLgA/3hm0OsSWPL+KgM8eolcsLYQweqqNPja/0kep5/f9r
	1ncUsw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpx4s8c2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:23:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2dc92350888so69558045ad.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 22:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789449791; x=1790054591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ahgAtWxFRwy6cq9ng7VxTyalhlNA7iHoeeWQVniYX/M=;
        b=RCgMFrtPnsVjYSg23+zvzNH/nJo++cH7Q7NCmxqdjUoOFDQ/kcg63s5/odrsFjsrkG
         kKpoAgZ0PvsLxq1jG8ugJ/DShImCsVJN8dr2TE8CQpjCZEa1ru+LhNHuVaP9SgdyG1Ly
         MmOjxNY0pjdMOAVLhdaqoa/gh8Je2O/u4v8gllwVo3yYBl9WCzplaaPY9nJl8Hx6RaHL
         C/Acxs3mxQuifKX8XUM6FfW9UII9XIZOwUG0zpbVyXEGuRGrMAJXWXS/ymYOiqLiwkX4
         iNOWcbzzwHWXW6CljGjoggyBls9jI1mVLUnzmPOO7qdy4XQtmJ3weZiw8b62wxCMpDXa
         qleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789449791; x=1790054591;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ahgAtWxFRwy6cq9ng7VxTyalhlNA7iHoeeWQVniYX/M=;
        b=uVOwSoEUJgxoLSWByrTzyt6w155QYRJXdCFzDIeTcZUuiCTlQIKAtiMIxrQYthSFJf
         uoNWFQ/fq8MGfMOttorJCQhcVeeZfU4/5ISIsc9n+BQP7D1sxULo3cKebComOpKZaMRe
         n48rrN5NzEYiYHstr3L0nUYwxxdDRAZq8jNsOMrVvUtT43R+1AMKQbUDrfZm/K7fKSPX
         h7fVfXA7jN/anM9wfcnNlsA5O4zgrnsdgLBno9ZlJsCtfQZpx9RJdHhrygeuZ0+PSTrT
         T7B6a+sa8jWSLahKLmLkR61Y+k1LKwrXEvMI6KFbCFYo3vUu0Zn3J38N6ekROIe97mr6
         zThA==
X-Forwarded-Encrypted: i=1; AKwUvBzKkb0FThYBCov17F1lpMk6j8Jz+jgodmdlVng9hLbiRohjcnwhP2lGGS8WCboWKeWHZGNU/hj2FPI=@lists.infradead.org
X-Gm-Message-State: AFuF++kL+oa9eQ7tzDvIWBmlymYYz/mci2gmBBYI2vY2uBHBkvnej2pD
	0OCfWN3butmxsVJ48irIoU0xdxjl9+OMkSpJKwgOq0jNKKzO0vBrmNZnngOfOEZzSMRmoZwJe8G
	qBr2/RRgHWZvoU/Ks220rjUQynLKyN13YSeuG5MgDpyPKuIMMR0uv5KfEe9XW2VItdkAx
X-Gm-Gg: AYBFou3kL2dCU/pSL/K1Ewnud3BuHZS9EZSRPwryIY60up754wY9UwbYrs4LU/ZGAeK
	RiB66EYfl7UqxsI6jDynPgPbtIaukDQTbjl9K8V0Vy2D7d0KRohilUyNRykZsazy9B6QvJonrz0
	N9r8iyo+JNtJ9iHyN+yvFPQvVk7b6VgwjGskg4rhEEd4P/EFh2rTDQTzC/KCwhjJmzsZKTtUmHa
	9xLbXcIfZNHUAQ/hQ/El4qYjtwPqKBT2LGU5zTiDxWTGVnQi0K8qYW/uyS0F2V1K3+gOv3XqR5j
	m0pWRRxsbUBJmSjmlyd/gf/2EoTp4xEDU+kObQB70ZhN5meZdaKIrEJDEaZnnMG2R/D03w9itL3
	yeIXfAMigQ4ZtOjPAzfsnTJs+ItfzWf4U
X-Received: by 2002:a05:6a20:728e:b0:3d3:aec2:4dc8 with SMTP id adf61e73a8af0-3db4059257dmr12375116637.20.1789449791079;
        Mon, 14 Sep 2026 22:23:11 -0700 (PDT)
X-Received: by 2002:a05:6a20:728e:b0:3d3:aec2:4dc8 with SMTP id adf61e73a8af0-3db4059257dmr12375051637.20.1789449790628;
        Mon, 14 Sep 2026 22:23:10 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4cf015csm33549798eec.4.2026.09.14.22.23.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 22:23:10 -0700 (PDT)
Message-ID: <3e28ec09-4378-4cd7-b786-ddee520db5eb@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 10:53:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        shengchao.guo@oss.qualcomm.com
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
 <20260910-neat-goat-of-prosperity-eeecaf@quoll>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260910-neat-goat-of-prosperity-eeecaf@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDA3NCBTYWx0ZWRfX74aJfE9Z4Vpg
 +r98aNnPhdqq+iLWCRTR12qyj0FdKQ2v1FF0J1mzp9Lk9MPLCT8PMZNlX021Om66rU+/3sLLMfi
 0eP4YyyKwzHygFSeezNW2z5v/RYj7VA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDA3NCBTYWx0ZWRfXyfUChwzG42+5
 MCBLrKRvl5FKb+Gd8ERQJLmSYyBvP8O2Z2Bft0OWkUsCE1Nk1miC852v+h/kG4732VxByaj5tFK
 2VMnejMI4tgxHlJDo4TXl5yPyvRXWEm3Wf/UffocN+7gwpvbYrCDEEtoYZdXuc5fzIREGlKSNzj
 aUio+4MKQKXnHw5sV+Fyhbnw4rdQ+1wI0B+frcVhFmxWl9ANHeJjGplCmVooZlJOCEd4YyBCYje
 Czct6bnH8jksCwd72sCM6coy/TS9AhU31gC0jYAxAdtWJdPg+RttyzIUymui3Z7b6au1lJYmJ1D
 K04jhfog4alwk59mEj/EufuMhIrK+2SYQSm8yK+f1WjoUwXlB8MST1aph8vcaLkd1I0C+RayJoj
 SS7myJjrHbrD4o0g3bpPTWgv6nf1p0WAI8tU/Zr0YGFjR8oIOnLtvZDSnah+jg2futCbeDeZf6u
 bjWDlfht0YQqCN4oFbw==
X-Authority-Analysis: v=2.4 cv=HsDjiETS c=1 sm=1 tr=0 ts=6aa8d63f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=bnyAZr9--xUIB8vRdWUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: IE6D06eFMXnJ2TPIz5jJ1zVg62TTMzgr
X-Proofpoint-ORIG-GUID: IE6D06eFMXnJ2TPIz5jJ1zVg62TTMzgr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_01,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_062328_183374_79F73D7C 
X-CRM114-Status: GOOD (  14.96  )
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

CgpPbiA5LzEwLzIwMjYgMzozMyBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBX
ZWQsIFNlcCAwOSwgMjAyNiBhdCAwNToxODoxNlBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBD
aHVuZHJ1IHdyb3RlOgo+PiArICB2ZGRhLXBoeS1hLXN1cHBseTogdHJ1ZQo+PiArCj4+ICsgIHZk
ZGEtcGh5LWItc3VwcGx5OiB0cnVlCj4+ICsKPj4gKyAgdmRkYS1waHktYy1zdXBwbHk6IHRydWUK
Pj4gKwo+PiArICB2ZGRhLXBoeS1kLXN1cHBseTogdHJ1ZQo+PiArCj4+ICsgIHZkZGEtcGxsLWEt
c3VwcGx5OiB0cnVlCj4+ICsKPj4gKyAgdmRkYS1wbGwtYi1zdXBwbHk6IHRydWUKPj4gKwo+PiAr
ICB2ZGRhLXBsbC1jLXN1cHBseTogdHJ1ZQo+PiArCj4+ICsgIHZkZGEtcGxsLWQtc3VwcGx5OiB0
cnVlCj4+ICsKPj4gKyAgcWNvbSxsaW5rLW1vZGU6Cj4+ICsgICAgZGVzY3JpcHRpb246IHwKPj4g
KyAgICAgIFJlZmVyZW5jZSB0byB0aGUgVENTUiBzeXNjb24gYW5kIHRoZSBvZmZzZXQgb2YgdGhl
Cj4+ICsgICAgICBUQ1NSX1BDSUVfTElOS19DT05GSUdfTU9ERSByZWdpc3Rlci4KPj4gKyAgICAg
ICAgMCAoUU1QX1BDSUVfTk9SRF9NT0RFX1gxNikgICAgICAgIOKAlCBhbGwgcG9ydHMgZ2FuZ2Vk
IGFzIHgxNgo+PiArICAgICAgICAxIChRTVBfUENJRV9OT1JEX01PREVfWDhfWDgpICAgICAg4oCU
IHg4IChwb3J0IEEpICsgeDggKHBvcnQgQitDK0QpCj4+ICsgICAgICAgIDIgKFFNUF9QQ0lFX05P
UkRfTU9ERV9YOF9YNF9YNCkgICDigJQgeDggKEEpICsgeDQgKEIpICsgeDQgKEMrRCkKPj4gKyAg
ICAgICAgMyAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1gyX1gyKeKAlCB4OCAoQSkgKyB4NCAo
QikgKyB4MiAoQykgKyB4MiAoRCkKPiBXaGF0IGRvZXMgdGhpcyBtZWFuPyBUaGUgcGh5IHdvcmtp
bmcgbW9kZSBpcyBkZWZpbmVkIGJ5IHBoeS1jZWxscwo+IGFyZ3VtZW50LCBzbyB3aGF0IGFyZSB0
aGVzZSBudW1iZXJzIGFib3ZlPwpJIHdhc24ndCBjbGVhciBvbiB0aGUgZGVzY3JpcHRpb24gb2Yg
cGh5LWNlbGxzIHByb3Blcmx5LCB3ZSBuZWVkIHBoeS1jZWxscyB0bwpiZSAxLCBzbwp0aGF0IGNv
bnRyb2xsZXIgbm9kZXMgY2FuIHJlZmVyZW5jZSBwaHkgd2l0aCBpbmRleCBpbmRpY2F0aW5nIHdo
aWNoIHBvcnQgb2YKcGh5IGJlaW5nIHVzZWQuCgpJIHdpbGwgdXBkYXRlIHRoZSBkZXNjcmlwdGlv
biBpbiBuZXh0IHNlcmllcy4KClRoZSBUQ1NSIHJlZ2lzdGVyIGlzIHRoZSByZWFsIHZhbHVlIHBy
b2dyYW1tZWQgYnkgVFogdG8gdGVsbCB3aGljaCBtb2RlIHdlIGFyZQpjdXJyZW50bHkKb3BlcmF0
aW5nLgoKLSBLcmlzaG5hIENoYWl0YW55YS4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YK
PgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
