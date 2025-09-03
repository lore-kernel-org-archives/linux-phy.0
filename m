Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEAE1CA1005
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 02:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6pCgRnpN0AOZGv2ai1cQhO0vFoLfMBbBt+lOoFDZzs=; b=lBkXYSzEsiPe2o
	9m5GGH+P+VPj9kiafa7yYjNAfqBcVRXps//SlL9vr7qYCgkOKWjGoHF1P3KnKPWDqKCXYFAPf2iTK
	SVYWFq1t9da8JsHAovJPJm/QMaROX70fEra4AZIcE+UA6Gzeb0p3Hk/kJMTzOhFoWKfWMExEO6Ytu
	8LFSsgrxCBwEgTv8AwOtTq5Zjq8onKKOhN1hkDTorvvmLt3Brs1dnvlCwRRTlNWztI9v1JPSkScen
	dBtG3qXKas3H96PCE9ICa2H7TZvTBtGFyadKXauCQKEtmvDZJImEjTg36zYL6iULBhdX/if88LGOg
	IyB6UwDO9shZNjvWuPCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utdAK-00000003Ert-1afl;
	Wed, 03 Sep 2025 02:24:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utd37-00000003DXr-3YZD
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 02:16:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58326AhN012688
	for <linux-phy@lists.infradead.org>; Wed, 3 Sep 2025 02:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v9zS6j9T98yNyfjNeGOWdW3vrw4eq89d9I5wRlLVeWM=; b=AgN98ydm4gYvt7nB
	l9MYyadPaUTYUvFUVU9zZB0ns+g80ToOn8/+yPoceO9rYRbQ4DZuZCqe4KBmtP+E
	yN7SRhYjyFYa078gPdpYmTs4q7Os4P1xBATPDLTOPaBDG29Q7dvmCQQSlFWdqOUQ
	mUs8CCxq11+ML76qCOBaL09QYU0Rmsexa9b6mzeYBIiCxvpJ2Yd+8hl7ET4CQtLk
	7Or06L9LYQbo8mFnG4gOZKygS+jmm0iTvsFzad5viwRcg861q3nXHXVYIvyyhm6p
	gFe1w4eJYHWQNpByN1dMskGHMO8lnL7FbPea33tHY9g1oO5DPh+flFFrsI3hO3rb
	w0MxIQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk91p9y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 02:16:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77243618babso3553801b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 19:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756865796; x=1757470596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v9zS6j9T98yNyfjNeGOWdW3vrw4eq89d9I5wRlLVeWM=;
        b=rYFh7rF+rOivik+oi1BRUSvu3DiX8XkB1tWrt5JILknIi1r8kisIIH6DDJ0OJRg2Mu
         waxEcF/FBD8eq8igpcDwTR+y6q2O6r5TLV+wPRb4N8DnwoYMHSXsOXWXqvlSYM3esZBi
         wQ2GZeZmYQg3aoQNUYqrSpTiJ3rra0jKbySfVAkEZLhx8ZS5kufeAQXMYZvyTZkBNU4k
         S72r0LdexKIegwtsRYi1vv/4qqmRi5mM6MYLlAdsw5KLw37VTaoXYHIUGHh2ILLDOpCM
         fZXRzz5LM5KJNibGnYOty6kb2zaQjlYAkmRJsP0n4EzBf5fRHNo2odbf605Z6NbBNLpx
         UV5g==
X-Forwarded-Encrypted: i=1; AJvYcCW9ZS75CToEX+oCwtykoTGzjQAfuiv4ihdAbpV34iXP0i7JX84LI18awwBmYIO5xPb8P+4wO+6hbLE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnuIzWkklzj28074m/NGg92AVxEHE4qYR4Ob0l5H7BNrxnaraS
	No5xnGRBBUK6VsQ7gfxsl5llDrtZov/YUH4FALEYFzkfBxhUtOg/w9Y7zm7EKSFygx7PFlSYhu5
	Nk8mwP82dR44u1ayEatsRGjG7CQ+uNoq7Spc9gW4DABdTIhP1qbGVlC/wRbuzYDI5wihO
X-Gm-Gg: ASbGnct65ZIptm9OPzPDzLY3uqrq0yHEfs9vMrnNYlcHxz9+GLL9bSszgu0TOqPpIYv
	LPa4Gzyh89TCiR/Mn4wc9TnO/ev3qPYaqEsYc5NGbHKYVuT54ePCsZy2ZyCOlwQFLnRRwguIkrd
	+Ywv80N2500gZ01dK+Ibfg8CwXemFkfQgoEbZIWEIVYTchAkmfPNmz6TDROaGfry1+hvBZFi++d
	Vy4CI71zonmwf1bt4EDVAZeFBJpcOGiJUDBI+llqKpaOleq5naPTsHPvvNN8LPFgYaeY3yFaU2s
	H1i1cXFDpZcY+tbkLOYeP9JD0ZPoJENLF5THD9eNFku2Ic6A24a6U1SqWGabc/6MnXV5KG7V4R3
	/9S5Mt0DyZOlXArM=
X-Received: by 2002:a05:6a20:5483:b0:238:f875:6261 with SMTP id adf61e73a8af0-243d6e0100amr17326312637.23.1756865795893;
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn3oKdkiywXs7I27qdf2yUwn9EW1s0qdzWAjlJxUt+zYeJZsSbpJFkobFdywABWGuVgSjbzw==
X-Received: by 2002:a05:6a20:5483:b0:238:f875:6261 with SMTP id adf61e73a8af0-243d6e0100amr17326268637.23.1756865795446;
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
Received: from [10.110.3.132] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4edf7ed519sm9565518a12.28.2025.09.02.19.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
Message-ID: <bec3a42d-317d-4758-924e-ac53f5dcfc10@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 10:16:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
To: Vinod Koul <vkoul@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com>
 <20250826091205.3625138-2-ziyue.zhang@oss.qualcomm.com>
 <aLWW-izvybTo52VN@vaman>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <aLWW-izvybTo52VN@vaman>
X-Proofpoint-GUID: 0m_Dts0i4FLFz0KCOnCC44Rdwf3hIjqS
X-Proofpoint-ORIG-GUID: 0m_Dts0i4FLFz0KCOnCC44Rdwf3hIjqS
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b7a504 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=buFmA9CyAF0SDTxNqVIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX3mdJe/sEYw0g
 PLTTNvLJJQTVCZihe29eRQ5cVWlcUGEOPPAP6u0jaj0vcDiDnISU2zGXlSsALQhDm+XZ3EXavV7
 A4z6piJCilmD/WCRazEJyI4ctHP6oUvGG0Qui+9N2iUHaCXekarrSOZpppvZtNVA27pO5otYdfH
 lmDV51cKr4IWo3L0Y2yx+8nM0o+31tP689bGm5lyLa6oOPtrdoy+hnvWdsE61uDQ7mO2LGZLIZN
 DS1ly2Pz8pDt78+e/DaYVgOIUI7PJAJxndjzamDDn+Lje8WjPqiqZAdy/sKVnC6sDMvtVShViUu
 +nM9DMRGPRH3Ccms/pUeuws//N3TJ8WD0xjUPO+VlKtTQFjE+aymNifIqSaVutfbHm4DgU+zGnR
 w+Z0864T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_191637_890502_6927DD19 
X-CRM114-Status: GOOD (  13.16  )
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

Ck9uIDkvMS8yMDI1IDg6NTIgUE0sIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMjYtMDgtMjUsIDE3
OjEyLCBaaXl1ZSBaaGFuZyB3cm90ZToKPj4gVGhlIGdjY19hdXhfY2xrIGlzIG5vdCByZXF1aXJl
ZCBieSB0aGUgUENJZSBQSFkgb24gcWNzODMwMCBhbmQgaXMgbm90Cj4+IHNwZWNpZmllZCBpbiB0
aGUgZGV2aWNlIHRyZWUgbm9kZS4gSGVuY2UsIG1vdmUgdGhlIHFjczgzMDAgcGh5Cj4+IGNvbXBh
dGliaWxpdHkgZW50cnkgaW50byB0aGUgbGlzdCBvZiBQSFlzIHRoYXQgcmVxdWlyZSBzaXggY2xv
Y2tzLgo+Pgo+PiBSZW1vdmVkIHRoZSBwaHlfYXV4IGNsb2NrIGZyb20gdGhlIFBDSWUgUEhZIGJp
bmRpbmcgYXMgaXQgaXMgbm8gbG9uZ2VyCj4+IHVzZWQgYnkgYW55IGluc3RhbmNlLgo+IFRoaXMg
ZG9lcyBub3QgYXBwbHkgZm9yIG1lCj4KPj4gRml4ZXM6IGU0NmU1OWI3N2E5ZSAoImR0LWJpbmRp
bmdzOiBwaHk6IHFjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5OiBEb2N1bWVudCB0aGUgUUNTODMw
MCBRTVAgUENJZSBQSFkgR2VuNCB4MiIpCj4gTm90IHN1cmUgd2h5IGlzIHRoaXMgZGVlbWVkIGEg
Zml4LCBhbHNvIG5vIGVtcHR5IGxpbmVzIGhlcmUKCkhpIFZpbm9kCgpBcyBwZXIgSm9oYW7igJlz
IHN1Z2dlc3Rpb24gaW4gdjcsIGl0IG1pZ2h0IGJlIGdvb2QgdG8gaW5jbHVkZSBhIGZpeCB0YWcu
CgpUaGlzIHBhdGNoIHJlc29sdmVzIHRoZSBpc3N1ZSB3aGVyZSB0aGUgUUNTODMwMCBQSFkgd2Fz
IHByZXZpb3VzbHkKCmNvbmZpZ3VyZWQgdG8gcmVxdWlyZSBvbmx5IDYgY2xvY2tzIGluc3RlYWQg
b2YgNy4KCkJScwoKWml5dWUKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
