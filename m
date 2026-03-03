Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A1DEB362F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 18:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfw82LkP5hYNMtI8+0OtADle5t1XZd2tRv9DmzgRi3A=; b=fiBtOEtZMgNyhg
	Eg5tLmU/HxfItkCd7wZ8ZGIUay/rUFnKpsMWRdAWbROKRjw2456/AVSI03RCnau13iclZ/8IIZxNO
	HuiX4ncfPeMrrsowHYU+APLhMXoQuBD5JZfAcrrhB0UtlZHrYy+1D9JvWOGBontRBaKjgGRTw5H8t
	p1K0UC+ZMNozn4aarZoCrVXjchOiSgzt2JD6KiMgiNejDOpfJqHxQP2bbMtLXX2kEZhMHPf04oFcL
	TPSEBeAQ/eYkETS9MRZUoxWZaMPkkkMFlMwvda6uvxD1OI1LD7sSZANfF1XjwJOgHCpKlbcEBgRFP
	sSfE+0lkWuCrjVkxAf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxU5u-0000000Fgd8-3USi;
	Tue, 03 Mar 2026 18:03:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxU5r-0000000Fgcf-3fPu
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 18:03:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0SBT3669994
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 18:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ySZ0KoZq2LhpQH8htZ/5AmkMgwyEGu6tXiMpty+Wwzs=; b=W1g5XVOoI2Id7AEs
	bvMPEf1azLRAFzGqJ/7QopNOwraQWnLkK+vHBxPGS1PTSuOKkgrEmrO9dPIVKH1b
	Jla+PBECtCvmLP9aK/bsijysOBqfWeYUcn37IqscPf03RVT7EEyyRlnCo9LGGWA3
	iOwjblwNOWi1ZgfMT0JdIW6KYGMUme/WkkdxfEsurPd6aLSZRLAqRV4ImqHDmOlP
	5okuRmVKF4Zgs8WzWloGnpEoE9OMSizl3n4zOmDs21PeFQSXOm6YBHt0kmBVXygK
	uF4HJXnOW3T9pynNuvAsrZQMRKvkRYhSFmU7fRHpGc1sPLfy1VXKNdU7KBy5zLtW
	K8spig==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe2c8s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 18:03:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2be07cafe1cso36499702eec.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 10:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772561019; x=1773165819; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ySZ0KoZq2LhpQH8htZ/5AmkMgwyEGu6tXiMpty+Wwzs=;
        b=TDwPTSSrjqp2ImtNkpQ1WLZh+S3gU81+6fn7/VK3TY4ZiP01Qqs9I+R5wGry7iFd41
         R6xjw8BEbbhdjRs3eqyJ8U5+GHMOGxPZRcBHq6iqZ3shPRgNPQSh1ztIFVEHWEUBbN4K
         RdrOfEvzOP0MIx/KnlmA+H8JO7TF0AM+qwUnt2k7jC0LJ3vSyiRar6PuxXOIABB1PNcf
         5uyAvNYnBQgOmaK2TuJfGtZ22p05r1KI+1e4HDvLVuFCJAd3TonNbLhSJvWG+S0faZ02
         a+nJ5L4OE6ILxl2OjQDU1/zVDNHz1b7LWzHzB2xPLXu2tvoqJLv/zIgMRwbeYTUmXHG+
         0Clw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772561019; x=1773165819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ySZ0KoZq2LhpQH8htZ/5AmkMgwyEGu6tXiMpty+Wwzs=;
        b=q2DATBtFfSzNfvKeKrSNhGjCvUnAr49Ygis8JmXUzGpS635Eb9YPlw/6eYqQE6tG+b
         83mKpLWGu04IHtj5sg46htGgTVkgGdUI/zdNlqDT6i56M6KIeYYbvOTO6OZAuJ2YbrLl
         CD1Tvxw5+T9b3J/F744zNsQxUx1FaDuiv33QgoJ9l++6J2hJ8s9r1reIy2U9Lw3NRu4f
         wRVap/Rabu0FCgH9/cfEJsXlMUef75efpboz87MkbWv9uq1ETgXi2miKA68Nv4oalFmY
         qvgbj8yO4DE2cLTE49pFyYcXiMGmAoM3M/9e2rMJEJWK/2hyijbVbDtY5pDg4Lj4kC2n
         kcLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe1DODhpkNfBAwhVIOaBxK7KEsw71P45Sw+2clpVNRLYKkda7zDOippy0E8b8HK7s87HgiwX9uneg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyhBfhaaMumSTETzmL9hjZxWF0v/jgxKhoZ/QITrbmNOWLIth0
	FUMSQYz3CSj7h15BfoO1sFV1+ZeffdsRPgMI11yh3O1ZTBIGioO3B7HcyyM4QCVmRktiDy5uVQ2
	7wYGw+uHCTwnA3M/YJYNoHb1/7nK2bczapX6QclnH2ic4TY4ukhe8y0LH9y7OAuA7yqzX
X-Gm-Gg: ATEYQzxMUcfSO0OId7ZHtyAm5y97v117K8AKDNDtFitiK6NmXqeQaNTmdSlPRV0gIOi
	r/g4n43tyJpEPxAC5XyOfdF37AGNflpjBy3H/YBR1NG3QBdOu2JK+EAPH9VEqdIfl2RKSy5/+2p
	fdAOWsm/t+ixOatN26Ky0aziuE7b51MYq1t4bJVUJ1PkD8TaQWY5dY/JDddfl5amNg3EXnHW6Y2
	kii7O6yCMmQoEaSDUx2dj7H1NYP3/mRY+nXjRFnNZbKdlWMfU9ubpo+Dk3t3hT8uTSyMnvtEtOn
	fUCvRssKXej7oI09gvSUyhZ33cfA/0PDHnQLdAqxBIsNrWMe4mU6YOEU9B08KHt3ER87QDY0wTf
	e1vI8QuDjp1wcQIlQutILTIv82x4X1wzL3tzReMkxfPj9PHzD2Q/S3oZE
X-Received: by 2002:a05:693c:630c:b0:2bd:f95b:445c with SMTP id 5a478bee46e88-2bdf96a9f26mr3759765eec.33.1772561018688;
        Tue, 03 Mar 2026 10:03:38 -0800 (PST)
X-Received: by 2002:a05:693c:630c:b0:2bd:f95b:445c with SMTP id 5a478bee46e88-2bdf96a9f26mr3759741eec.33.1772561018027;
        Tue, 03 Mar 2026 10:03:38 -0800 (PST)
Received: from [172.20.10.12] ([172.56.179.142])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cefd7esm15182247eec.9.2026.03.03.10.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:03:37 -0800 (PST)
Message-ID: <d18ea7aa-67e8-4f8b-b2b3-0a7499ec836e@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 10:03:35 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@nxsw.ie>, Bryan O'Donoghue <bod@kernel.org>,
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
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
X-Proofpoint-ORIG-GUID: 9Bkmh2tKT2PcCSSpFUC2W29p_jHeqcEM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE0NSBTYWx0ZWRfX5tt0YabMvg7P
 oOtA/BU4DI1/h5/9xv9OIofo3H+D2s43/SsmFTfUL/jMMJwdWh8uEeolLnafryPyqO3TX3GxPCv
 gK/p0FZCNYuRqSVDiufXp6nYMEKCwhSqWw2yh5a/iSTss6gY3HXazrGGsmR0s8CvKPl7M76Vzhu
 ev+Z52tcAqNAzl2cCVoeRn1r8XNe7B8fPI7jYacb5DEuXmXKy0HpnHwZOxYHDlzfX3dzkH1jJes
 tWQEy259gNp7vOJDzRS0fn72akF9H8B2f0Uvd6yIF5G9T0Jn8kkKD2ZioD2J+axRIM3dH6trlHS
 TIDCyB9wMfWeguGe6dHbgWnm9qJPGQ6t6av1ghWof1xdf6ezADaJPFsq2wAmhS6VOkPFvKsbD3n
 8tLXAMoNBIqLOwG4o3uyCZ3uaGbUTLiX274GotVZcRCunJVGq4pje/tZcFL68PPJmtim19E36FV
 CWNQpKYJYqslRKDZ/Gg==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a7227b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=393jXSRlBufqMOIp+yiRFw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gQ32FRLzBq-2T08LLFUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 9Bkmh2tKT2PcCSSpFUC2W29p_jHeqcEM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_100339_913114_6EB13BFA 
X-CRM114-Status: GOOD (  11.90  )
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

CgpPbiAzLzMvMjAyNiAxOjMwIEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAz
LzIwMjYgMDk6MjcsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IC0gTVhBIC0gZmlyc3QgdGlt
ZSBJJ3ZlIGhlYXJkIG9mIHRoaXMgcmFpbCwgZnJvbSBtZW1vcnkgSSBkb24ndCByZW1lbWJlcgo+
PiAgIMKgwqDCoMKgwqDCoMKgIGhhdmluZyBzZWVuIHRoaXMgaW4gaXBjYXQgd2hlbiBJIGNvdWxk
IGRvIHNvLgo+IAo+IFllYWggbm8gTVhBIGlzbid0IGEgcmVxdWlyZWQgdm90ZS4KPiAKPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzlmZjE2NDVmLWIyYzktNGMxYS1hZTJk
LTk2YWY0MTZiMDhkOUBvc3MucXVhbGNvbW0uY29tLwpJZiBJIGFtIG5vdCB3cm9uZywgQ0FNQ0Mg
b25seSBlbmFibGVzIHRoZSBwb3dlciBkb21haW5zIHRoYXQgc291cmNlIHRoZSAKQ0FNQ0MgYmxv
Y2sgYW5kIGl0J3MgcmVnaXN0ZXIgYWNjZXNzLiBBbmQgZm9yIHRoYXQsIGl0IG9ubHkgbmVlZHMg
dGhvc2UgCnBvd2VyIGRvbWFpbnMgdG8gYmUganVzdCBlbmFibGVkIHdpdGhvdXQgYW55IHBlcmZv
cm1hbmNlIHZvdGUuIEJhc2VkIG9uIApoZXIgY29tbWVudCwgaWYgTVhBIGlzIGFsd2F5cyBlbmFi
bGVkIChhdCBtaW4gbGV2ZWwpLCBwcm9iYWJseSBDQU1DQyAKZHJpdmVyIGRvZXNuJ3QgbmVlZCB0
byBlbmFibGUgb3Igc2NhbGUgaXQgZXhwbGljaXRseS4gSG93ZXZlciwgdGhlIApjYW1lcmEgZGV2
aWNlcyB0aGF0IGFjdHVhbGx5IGRlcGVuZCBvbiB0aGlzIHBvd2VyIGRvbWFpbiBmb3IgdGhlaXIg
Y29yZSAKZnVuY3Rpb25hbGl0eSBuZWVkIHRvIHNjYWxlIHRoaXMgcGVyIHRoZSBjb3JlIGNsb2Nr
IGNvcm5lci4gSSBjYW4gZG91YmxlIApjaGVjayB0aG91Z2guCj4gCj4gLS0tCj4gYm9kCj4gClRo
YW5rcywKVmlqYXkuCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
