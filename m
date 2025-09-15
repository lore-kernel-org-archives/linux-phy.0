Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B39FCAC598
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 10:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JZvmbQit9t7pDWeEf5GDZn4U++oLrg40warbsCEzrs=; b=ZN+8kbTzHw30pk
	KSRrqkePHmvY6IuKHaPCrRGPRIfhLI540F/Emtm17+lVQKM8GdYv/+nAW0kampnk8DjrKRIWbH9mS
	T4NUBvLbGOIQLjqAESxvP9FuxNeGm2fvdFIGTq0o1SN2DaltQDvZgIUt4Q0taS3MdGqCwjeazMUzF
	cftafdufwzDLRZXfYPlkOt9WYBmcbE95mmSk9nRnnoF95aXid55zwpqnPh8humQ6auAuaHo6EM0BC
	iIYtVEpKMnAT7E79j/jXx9fg+yzGDbHOto+iaQx4HdvpONKt+Tu3ExI6sGDINZ4CLFOAUjdyJ1njI
	ZxBJ2u7cAWuDXiPb4lhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy62d-00000003ZG1-3wbp;
	Mon, 15 Sep 2025 10:02:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy62b-00000003ZFG-3FPR
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 10:02:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fitt021999
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RTisw5ByyI4F3Zifb2Z49clSLFGezt1mwX++Bhg1W20=; b=HdXkj1dqqcFsFQUK
	AIZ04BaOkDvwUVOHs2RB2vPjqIwH1Cy9KnkD+KJkaBgvJtX4V3y6R90jebdwix8S
	CLxfOOOmNmuMy12wY1MDPJtThE8mVXxT6bByMsJfuGFxjT78dSZvGvAANylZMZF0
	c8F0j6dm7bJsBEVzDXYYi3Btpaah+v9cb/qrhT8HzPAajtIyTJR7TJB/gJIGxpKs
	kN9MvvjNdQRINiNUs/grX5aVQWopX2hNo9DgjmWCU7uMyq8DHr/2dKpMtV/3FVRQ
	Konw9X0nVZQfB48+P/wmRJ3bYDel+k/fTa1vVQgdJ9imFCtyYaevqcVJ2DSG+hz2
	uIPHxA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49510acf17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:02:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-260494984b2so7657855ad.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 03:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930550; x=1758535350;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RTisw5ByyI4F3Zifb2Z49clSLFGezt1mwX++Bhg1W20=;
        b=J/wUDzd/QyZ34d1hwGPn4izii6A7HAl5MNZizzVBBuKVAA2DdOBYX/g9VKl6HTkM3N
         pKNBNcQTAvKZQNlf5gncyCXMF94jk6Fbh3uk2atVMLx/dLXOL+3KqQVYwHECao0QaPPk
         Hx2xT8aCMYPvOCUQyYvZuV3Ng+Bh3tGBJmijlGhczDMSabfISxjyTd1p0b7Eb6LLobCd
         KPRrGXyYOMvJLG5htRsPKhKik9ktH+UNFXtoQ23MVfhx16h3XuIkhgGfrIRBxkJGTASj
         ob/fq0vbdP6AoFyAbObEC++5G86bpAUhlnt4ZKDh66EuIk7vnDwg3hEPDY6PjPK9nZuZ
         ZxZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfbXT9Iwd0ErA1rY6Ud0gXTJuHxpAFg3aOqAox4wa3EsGg8sE7K/YRFDI+weVCA981HGVjzERiSqY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfNYP0Prrg3B/FrqjWyZ12nXzyIQ2irrYpCOT5TrejAdSPM7qg
	gLpXmvAoPMxjMazT3dUieDgII+CoFlzQjeAqE3WeUjt6mQ0xdbXk5CETKO1UKCvSkI+LxLOjBfT
	IoLfU21bkiGlhW1ouWMR24MXoQD0RTMAFxk3YOxgzhRJiEIDqz9ovNBDA144YQYva5bWP
X-Gm-Gg: ASbGncsJ3O0C3BAPG0DYcGbN+KVZfulmzbpyR5p7lD3JuNCUiD8lCm/7gIiedTK7QiK
	cTNUsgt8nZVj+462i5jkfMukK37xOou/ExW26mL2jQQMzm4+7j9dEc6NZEER6cPZgLIa0SftzFA
	ffJTWxejZOXFNYCAItlAlf6od7NnoCGyQ+HvWGzSJuJjQeHDnPQzlTrK2vjBh9lKMQo7HnX+yb7
	F2SCvo14qQ/mWVsN3AW5yS73DZqEJBR8eoTk71bww2k0t9Eu2hVlXYxVIdBLpRnMOYEV5XFU17R
	3EuiROpE4+YvkHOu/Wt2No4pyfr/MiAQh5z1LocFquMawKgfpXslkDhJ/yAjNoSuGiTHYDkJyQX
	XRMP8azuNfELBqVJOTGuuazgthgvYQKSoPFU=
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr75003285ad.5.1757930550172;
        Mon, 15 Sep 2025 03:02:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlN8SXzL/M7lGiB6fe82u+OD/VJPAV8UoBvXqWaww58FVu70TKBhRJPMQALRvqJffcvDnBdw==
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr75002895ad.5.1757930549486;
        Mon, 15 Sep 2025 03:02:29 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-264277e8bc2sm42618715ad.138.2025.09.15.03.02.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:02:29 -0700 (PDT)
Message-ID: <05e8069e-895c-48b2-8a25-a4a680728cfa@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:02:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
 <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
X-Authority-Analysis: v=2.4 cv=I/plRMgg c=1 sm=1 tr=0 ts=68c7e437 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Jnl8Gmoy9ed6ZAd_i4cA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMiBTYWx0ZWRfX7MmSgogNdagF
 F3aW+4n8NNy1FBchZyUphe48FTHqdpbzVpn1QQ28uieTnE7wF+PBhSFWfArWn/zRi0w/jFiJb6n
 q5EnKZ2ZP9J0rTPGMnN9tFeV6o3FiKyEXL+t9BKiFfFL4kaGnfWC11Qxiu7ODj67eiXb8lF+/3t
 CdljiZ9l6Fk+kP8VM+KDnEuMmwFiIal4A+qaythB9OBLM7vmcKMFC+bI7ZuS8rFMJHP1R2LPEPr
 DgBU9ko4wQQufKiH7gh4ZOHqcq2e1ejnxEhXRA7YGYFy+v6VczFO88BSYCguAwv8Q0vxCKRW881
 jgyUBzEfFIUEXIaATap258cyfXVRFK8YK1xblKPs6lcv7glZCzcfBvzqPXvn2FZs4HJUzDLG/XI
 GZY2vD0r
X-Proofpoint-ORIG-GUID: JzKk3T8JaS7N0_HkYr_FQMpG0y933UkT
X-Proofpoint-GUID: JzKk3T8JaS7N0_HkYr_FQMpG0y933UkT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_030233_932784_9A5197FA 
X-CRM114-Status: GOOD (  25.57  )
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

Ck9uIDkvMTIvMjAyNSA4OjA4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIEZyaSwg
U2VwIDEyLCAyMDI1IGF0IDA4OjAwOjE0UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA5LzEyLzIwMjUgNjoxOSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIFRodSwg
U2VwIDExLCAyMDI1IGF0IDEwOjU1OjA1UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+
IEFkZCBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgY2xvY2sgcmVnaXN0cmF0aW9uIGFuZCBEVCBwYXJz
aW5nIGZvciBEUCBvZmZzZXRzLgo+Pj4+IEV4dGVuZCBxbXBfdXNiY19yZWdpc3Rlcl9jbG9ja3Mg
YW5kIGNsb2NrIHByb3ZpZGVyIGxvZ2ljIHRvIHN1cHBvcnQgYm90aAo+Pj4+IFVTQiBhbmQgRFAg
aW5zdGFuY2VzLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUu
eWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11c2JjLmMgfCAyMDggKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTk1IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygt
KQo+Pj4+Cj4+Pj4gQEAgLTEyNzYsOCArMTI5MSwxMSBAQCBzdGF0aWMgaW50IHBoeV9waXBlX2Ns
a19yZWdpc3RlcihzdHJ1Y3QgcW1wX3VzYmMgKnFtcCwgc3RydWN0IGRldmljZV9ub2RlICpucCkK
Pj4+PiAgCj4+Pj4gIAlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZyhucCwgImNsb2NrLW91
dHB1dC1uYW1lcyIsICZpbml0Lm5hbWUpOwo+Pj4+ICAJaWYgKHJldCkgewo+Pj4+IC0JCWRldl9l
cnIocW1wLT5kZXYsICIlcE9GbjogTm8gY2xvY2stb3V0cHV0LW5hbWVzXG4iLCBucCk7Cj4+Pj4g
LQkJcmV0dXJuIHJldDsKPj4+PiArCQljaGFyIG5hbWVbNjRdOwo+Pj4+ICsKPj4+PiArCQkvKiBD
bG9jayBuYW1lIGlzIG5vdCBtYW5kYXRvcnkuICovCj4+Pj4gKwkJc25wcmludGYobmFtZSwgc2l6
ZW9mKG5hbWUpLCAiJXM6OnBpcGVfY2xrIiwgZGV2X25hbWUocW1wLT5kZXYpKTsKPj4+PiArCQlp
bml0Lm5hbWUgPSBuYW1lOwo+Pj4+ICAJfQo+Pj4gRG8gd2UgaGF2ZSBhbnkgZ3VhcmFudGVlcyB0
aGF0IG1lbW9yeSBmb3IgJ25hbWUnIGV4aXN0cyBiZXlvbmQgdGhpcyBwb2ludD8KPj4KPj4gSWYg
dGhlIHByZXZpb3VzIG9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKCkgY2FsbCBzdWNjZWVkZWQsIGNv
dWxkICduYW1lJwo+PiBzdGlsbCBiZSBlbXB0eT8gb3IgeW91IG1lYW5zICdjaGFyIG5hbWVbNjRd
JyB3aWxsIGJlIHJlbGVhc2UgYWZ0ZXIgJ30nPwo+Pgo+PiBGcm9tIGxvY2FsIHZlcmlmaWNhdGlv
biwgSSBjYW4gc2VlIDg4ZTgwMDAucGh5OjpwaXBlX2NsayBub2RlIGZyb20gY2xrX3N1bW1hcnku
Cj4gY2hhciBuYW1lWzY0XSBiZWxvbmcgdG8gYSBzdGFjayBmcmFtZSB0aGF0IGlzIG5vdCBndWFy
YW50ZWVkIHRvIGV4aXN0Cj4gYWZ0ZXIgeW91J3ZlIGNsb3NlIHRoaXMgYnJhY2tlZC4gU28gaXQg
Y2FuIGJlIGVhc2lseSBvdmVyd3JpdHRlbiB3aXRoCj4gb3RoZXIgdmFsdWVzLgoKCllvdSBhcmUg
cmlnaHQsIHdpbGwgbW92ZcKgY2hhciBuYW1lWzY0XSBkZWNsYXJhdGlvbiB0byBiZWdpbm5pbmcg
b2YgZnVuY3Rpb24uCgoKPj4KPj4+PiAgCj4+Pj4gIAlpbml0Lm9wcyA9ICZjbGtfZml4ZWRfcmF0
ZV9vcHM7Cj4+Pj4gQEAgLTEyODYsMTkgKzEzMDQsMTc2IEBAIHN0YXRpYyBpbnQgcGh5X3BpcGVf
Y2xrX3JlZ2lzdGVyKHN0cnVjdCBxbXBfdXNiYyAqcW1wLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KQo+Pj4+ICAJZml4ZWQtPmZpeGVkX3JhdGUgPSAxMjUwMDAwMDA7Cj4+Pj4gIAlmaXhlZC0+aHcu
aW5pdCA9ICZpbml0Owo+Pj4+ICAKPj4+PiAtCXJldCA9IGRldm1fY2xrX2h3X3JlZ2lzdGVyKHFt
cC0+ZGV2LCAmZml4ZWQtPmh3KTsKPj4+PiAtCWlmIChyZXQpCj4+Pj4gKwlyZXR1cm4gZGV2bV9j
bGtfaHdfcmVnaXN0ZXIocW1wLT5kZXYsICZmaXhlZC0+aHcpOwo+Pj4+ICt9Cj4+Pj4gKwo+Pj4+
ICsKPj4+PiArLyoKPj4+PiArICogRGlzcGxheSBQb3J0IFBMTCBkcml2ZXIgYmxvY2sgZGlhZ3Jh
bSBmb3IgYnJhbmNoIGNsb2Nrcwo+Pj4+ICsgKgo+Pj4+ICsgKiAgICAgICAgICAgICAgKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPj4+PiArICogICAgICAgICAgICAgIHwgICAgICAg
ICBEUF9WQ09fQ0xLICAgICAgICAgICB8Cj4+Pj4gKyAqICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfAo+Pj4+ICsgKiAgICAgICAgICAgICAgfCAgICArLS0tLS0t
LS0tLS0tLS0tLS0tLSsgICAgIHwKPj4+PiArICogICAgICAgICAgICAgIHwgICAgfCAgIChEUCBQ
TEwvVkNPKSAgICB8ICAgICB8Cj4+Pj4gKyAqICAgICAgICAgICAgICB8ICAgICstLS0tLS0tLS0r
LS0tLS0tLS0tKyAgICAgfAo+Pj4+ICsgKiAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgdiAg
ICAgICAgICAgICAgIHwKPj4+PiArICogICAgICAgICAgICAgIHwgICArLS0tLS0tLS0tLSstLS0t
LS0tLS0tLSsgICB8Cj4+Pj4gKyAqICAgICAgICAgICAgICB8ICAgfCBoc2Nsa19kaXZzZWxfY2xr
X3NyYyB8ICAgfAo+Pj4+ICsgKiAgICAgICAgICAgICAgfCAgICstLS0tLS0tLS0tKy0tLS0tLS0t
LS0tKyAgIHwKPj4+PiArICogICAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0rCj4+Pj4gKyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4+ICsgKiAg
ICAgICAgICArLS0tLS0tLS0tPC0tLS0tLS0tLXYtLS0tLS0tLS0tLS0+LS0tLS0tLS0tLSsKPj4+
PiArICogICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8Cj4+Pj4gKyAqICstLS0tLS0tLXYtLS0tLS0tLS0tLS0tLS0tKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgfAo+Pj4+ICsgKiB8ICAgIGRwX3BoeV9wbGxfbGlua19jbGsgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKPj4+PiArICogfCAgICAgbGlua19jbGsgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4gKyAqICstLS0tLS0tLSstLS0tLS0tLS0tLS0t
LS0tKyAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4+ICsgKiAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPj4+PiArICogICAgICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4gKyAqICAg
ICAgICAgIHYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdgo+Pj4+
ICsgKiBJbnB1dCB0byBESVNQQ0MgYmxvY2sgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKPj4+PiArICogZm9yIGxpbmsgY2xrLCBjcnlwdG8gY2xrICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8Cj4+Pj4gKyAqIGFuZCBpbnRlcmZhY2UgY2xvY2sgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfAo+Pj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPj4+PiArICogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4gKyAqICAgICAgKy0tLS0tLS0tPC0t
LS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLSstLS08LS0tKwo+Pj4+ICsgKiAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICB8Cj4+Pj4gKyAqICstLS0tdi0tLS0t
LS0tLSsgICstLS0tLS0tLXYtLS0tLSsgICstLS0tLS0tLXYtLS0tLS0rCj4+Pj4gKyAqIHwgdmNv
X2RpdmlkZWQgIHwgIHwgdmNvX2RpdmlkZWQgIHwgIHwgdmNvX2RpdmlkZWQgICB8Cj4+Pj4gKyAq
IHwgICAgX2Nsa19zcmMgIHwgIHwgICAgX2Nsa19zcmMgIHwgIHwgICAgX2Nsa19zcmMgICB8Cj4+
Pj4gKyAqIHwgICAgICAgICAgICAgIHwgIHwgICAgICAgICAgICAgIHwgIHwgICAgICAgICAgICAg
ICB8Cj4+Pj4gKyAqIHxkaXZzZWxfc2l4ICAgIHwgIHwgIGRpdnNlbF90d28gIHwgIHwgIGRpdnNl
bF9mb3VyICB8Cj4+Pj4gKyAqICstLS0tLS0tKy0tLS0tLSsgICstLS0tLSstLS0tLS0tLSsgICst
LS0tLS0tLSstLS0tLS0rCj4+Pj4gKyAqICAgICAgICAgfCAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgIHwKPj4+PiArICogICAgICAgICB2LS0tLT4tLS0tLS0tLS0tdi0tLS0tLS0t
LS0tLS08LS0tLS0tdgo+Pj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4gKyAq
ICAgICAgICAgICAgICArLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLSsKPj4+PiArICogICAg
ICAgICAgICAgIHwgICBkcF9waHlfcGxsX3Zjb19kaXZfY2xrICAgfAo+Pj4+ICsgKiAgICAgICAg
ICAgICAgKy0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0rCj4+Pj4gKyAqICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+Pj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgIHYKPj4+PiArICog
ICAgICAgICAgICAgIElucHV0IHRvIERJU1BDQyBibG9jawo+Pj4+ICsgKiAgICAgICAgICAgICAg
Zm9yIERQIHBpeGVsIGNsb2NrCj4+Pj4gKyAqCj4+Pj4gKyAqLwo+Pj4+ICtzdGF0aWMgaW50IHFt
cF9kcF9waXhlbF9jbGtfZGV0ZXJtaW5lX3JhdGUoc3RydWN0IGNsa19odyAqaHcsIHN0cnVjdCBj
bGtfcmF0ZV9yZXF1ZXN0ICpyZXEpCj4+Pj4gK3sKPj4+PiArCXN3aXRjaCAocmVxLT5yYXRlKSB7
Cj4+Pj4gKwljYXNlIDE2MjAwMDAwMDBVTCAvIDI6Cj4+Pj4gKwljYXNlIDI3MDAwMDAwMDBVTCAv
IDI6Cj4+Pj4gKwkvKiA1LjQgYW5kIDguMSBHSHogYXJlIHNhbWUgbGluayByYXRlIGFzIDIuN0dI
eiwgaS5lLiBkaXYgNCBhbmQgZGl2IDYgKi8KPj4+PiArCQlyZXR1cm4gMDsKPj4+PiArCWRlZmF1
bHQ6Cj4+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gKwl9Cj4+Pj4gK30KPj4+PiArCj4+Pj4g
K3N0YXRpYyB1bnNpZ25lZCBsb25nIHFtcF9kcF9waXhlbF9jbGtfcmVjYWxjX3JhdGUoc3RydWN0
IGNsa19odyAqaHcsIHVuc2lnbmVkIGxvbmcgcGFyZW50X3JhdGUpCj4+Pj4gK3sKPj4+PiArCWNv
bnN0IHN0cnVjdCBxbXBfdXNiYyAqcW1wOwo+Pj4+ICsJY29uc3Qgc3RydWN0IHBoeV9jb25maWd1
cmVfb3B0c19kcCAqZHBfb3B0czsKPj4+PiArCj4+Pj4gKwlxbXAgPSBjb250YWluZXJfb2YoaHcs
IHN0cnVjdCBxbXBfdXNiYywgZHBfcGl4ZWxfaHcpOwo+Pj4+ICsKPj4+PiArCWRwX29wdHMgPSAm
cW1wLT5kcF9vcHRzOwo+Pj4+ICsKPj4+PiArCXN3aXRjaCAoZHBfb3B0cy0+bGlua19yYXRlKSB7
Cj4+Pj4gKwljYXNlIDE2MjA6Cj4+Pj4gKwkJcmV0dXJuIDE2MjAwMDAwMDBVTCAvIDI7Cj4+Pj4g
KwljYXNlIDI3MDA6Cj4+Pj4gKwkJcmV0dXJuIDI3MDAwMDAwMDBVTCAvIDI7Cj4+Pj4gKwljYXNl
IDU0MDA6Cj4+Pj4gKwkJcmV0dXJuIDU0MDAwMDAwMDBVTCAvIDQ7Cj4+PiBObyBIQlIzIHN1cHBv
cnQ/IFRoZW4gd2h5IHdhcyBpdCBtZW50aW9uZWQgZmV3IGxpbmVzIGFib3ZlPwoKClllcywgbm8g
SEJSMyBzdXBwb3J0LCB3aWxsIHVwZGF0ZcKgYW5ub3RhdGlvbiBpbiBxbXBfZHBfcGl4ZWxfY2xr
X2RldGVybWluZV9yYXRlCgoKPj4+PiArCWRlZmF1bHQ6Cj4+Pj4gKwkJcmV0dXJuIDA7Cj4+Pj4g
Kwl9Cj4+Pj4gK30KPj4+PiArCj4+Pj4gK3N0YXRpYyBpbnQgcW1wX3VzYmNfcmVnaXN0ZXJfY2xv
Y2tzKHN0cnVjdCBxbXBfdXNiYyAqcW1wLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+Pj4+ICt7
Cj4+Pj4gKwlpbnQgcmV0Owo+Pj4+ICAKPj4+PiAtCXJldCA9IG9mX2Nsa19hZGRfaHdfcHJvdmlk
ZXIobnAsIG9mX2Nsa19od19zaW1wbGVfZ2V0LCAmZml4ZWQtPmh3KTsKPj4+PiArCXJldCA9IHBo
eV9waXBlX2Nsa19yZWdpc3RlcihxbXAsIG5wKTsKPj4+PiAgCWlmIChyZXQpCj4+Pj4gIAkJcmV0
dXJuIHJldDsKPj4+PiAgCj4+Pj4gLQkvKgo+Pj4+IC0JICogUm9sbCBhIGRldm0gYWN0aW9uIGJl
Y2F1c2UgdGhlIGNsb2NrIHByb3ZpZGVyIGlzIHRoZSBjaGlsZCBub2RlLCBidXQKPj4+PiAtCSAq
IHRoZSBjaGlsZCBub2RlIGlzIG5vdCBhY3R1YWxseSBhIGRldmljZS4KPj4+PiAtCSAqLwo+Pj4+
IC0JcmV0dXJuIGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChxbXAtPmRldiwgcGh5X2Nsa19yZWxl
YXNlX3Byb3ZpZGVyLCBucCk7Cj4+Pj4gKwlpZiAocW1wLT5kcF9zZXJkZXMgIT0gMCkgewo+Pj4+
ICsJCXJldCA9IHBoeV9kcF9jbGtzX3JlZ2lzdGVyKHFtcCwgbnApOwo+Pj4+ICsJCWlmIChyZXQp
Cj4+Pj4gKwkJCXJldHVybiByZXQ7Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4+ICsJcmV0dXJuIGRldm1f
b2ZfY2xrX2FkZF9od19wcm92aWRlcihxbXAtPmRldiwgcW1wX3VzYmNfY2xrc19od19nZXQsIHFt
cCk7Cj4+PiBEbyB5b3UgdW5kZXJzdGFuZCB3aGF0IGRpZCB0aGUgY29tbWVudCAodGhhdCB5b3Un
dmUgcmVtb3ZlZCkgc2F5PyBBbmQKPj4+IHdoeT8KPgo+IEFuZCB0aGlzIHdhcyBpZ25vcmVkIDot
KAoKU29ycnkgZm9yIG1pc3NpbmcgdGhpcyBwYXJ0LgoKRm9yIFVTQi1DIFBIWSwgdGhlIGxlZ2Fj
eSBpbXBsZW1lbnRhdGlvbiBvbmx5IHN1cHBvcnRzIFVTQiB3aXRoIGEgc2luZ2xlCmRldmljZSBu
b2RlLiBUaGUgbmV3IGRyaXZlciBmb3IgVVNCIGFuZCBEUCBhbHNvIHVzZXMgYSBzaW5nbGUgZGV2
aWNlIG5vZGUuCgpUaGUgZnVuY3Rpb24gZGV2bV9vZl9jbGtfYWRkX2h3X3Byb3ZpZGVyIGludGVy
bmFsbHkgaGFuZGxlcyBib3RoCm9mX2Nsa19hZGRfaHdfcHJvdmlkZXIgYW5kIGRldnJlc19hZGQs
IGFuZCBzdXBwb3J0cyBhdXRvbWF0aWMgcmVzb3VyY2UKcmVsZWFzZS4KClNvIEkgdGhpbmsgdXNp
bmcgZGV2bV9vZl9jbGtfYWRkX2h3X3Byb3ZpZGVyIGFsbG93cyB1cyB0byByZW1vdmUKb2ZfY2xr
X2FkZF9od19wcm92aWRlciBhbmQgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0LgoKRm9yIGNvbWJv
IFBIWSwgdGhlIGxlZ2FjeSBpbXBsZW1lbnRhdGlvbiB1c2VzIHR3byBkZXZpY2Ugbm9kZXM6IGRw
X25wIGFuZAp1c2JfbnAuIFRvIG1haW50YWluIGZvcndhcmQgY29tcGF0aWJpbGl0eSwgd2UgbmVl
ZCB0byBrZWVwIHN1cHBvcnQgZm9yCmJvdGggbm9kZXMgYW5kIHJldGFpbiB0aGUgcmVsYXRlZCBs
b2dpYy4KCgo+Pj4+ICB9Cj4+Pj4gIAo+Pj4+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfVFlQRUMp
Cj4+Pj4gQEAgLTE0MjksNiArMTYwNCwxMyBAQCBzdGF0aWMgaW50IHFtcF91c2JjX3BhcnNlX2R0
KHN0cnVjdCBxbXBfdXNiYyAqcW1wKQo+Pj4+ICAJaWYgKElTX0VSUihiYXNlKSkKPj4+PiAgCQly
ZXR1cm4gUFRSX0VSUihiYXNlKTsKPj4+PiAgCj4+Pj4gKwlpZiAob2Zmcy0+ZHBfc2VyZGVzICE9
IDApIHsKPj4+PiArCQlxbXAtPmRwX3NlcmRlcyA9IGJhc2UgKyBvZmZzLT5kcF9zZXJkZXM7Cj4+
Pj4gKwkJcW1wLT5kcF90eCA9IGJhc2UgKyBvZmZzLT5kcF90eGE7Cj4+Pj4gKwkJcW1wLT5kcF90
eDIgPSBiYXNlICsgb2Zmcy0+ZHBfdHhiOwo+Pj4+ICsJCXFtcC0+ZHBfZHBfcGh5ID0gYmFzZSAr
IG9mZnMtPmRwX2RwX3BoeTsKPj4+PiArCX0KPj4+PiArCj4+Pj4gIAlxbXAtPnNlcmRlcyA9IGJh
c2UgKyBvZmZzLT5zZXJkZXM7Cj4+Pj4gIAlxbXAtPnBjcyA9IGJhc2UgKyBvZmZzLT5wY3M7Cj4+
Pj4gIAlpZiAob2Zmcy0+cGNzX21pc2MpCj4+Pj4gQEAgLTE1MzcsNyArMTcxOSw3IEBAIHN0YXRp
YyBpbnQgcW1wX3VzYmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiAg
CSAqLwo+Pj4+ICAJcG1fcnVudGltZV9mb3JiaWQoZGV2KTsKPj4+PiAgCj4+Pj4gLQlyZXQgPSBw
aHlfcGlwZV9jbGtfcmVnaXN0ZXIocW1wLCBucCk7Cj4+Pj4gKwlyZXQgPSBxbXBfdXNiY19yZWdp
c3Rlcl9jbG9ja3MocW1wLCBucCk7Cj4+Pj4gIAlpZiAocmV0KQo+Pj4+ICAJCWdvdG8gZXJyX25v
ZGVfcHV0Owo+Pj4+ICAKPj4+Pgo+Pj4+IC0tIAo+Pj4+IDIuMzQuMQo+Pj4+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
