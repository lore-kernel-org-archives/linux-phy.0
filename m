Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5260C2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 08:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/k3G6KX7m39lMPvsJYiOXmFrMZoLSP5gKMVuGNH4T3A=; b=XFQS9gnlx+h0Dy
	PabpquDMutvtCsJI4npoOCxK7JuvXKdDzRPQ3uyDr0Gv4dyGPkZqMZ3IfXMrfkhRzwpKc9AC6HlnV
	hFZ/YQ1snYvLwFusarOV1kyBGwkeljjc3+flOvtwoMOlOTpCv7JZGEkfAB8VxLQ/Gg603ex1Ujj3p
	QE1NNju5irFAQRHaNXELM4nHPjLvLx2ON/+ZpqWKeZQtOfxan5O9cqwAEwZyyQofOTNwttejMXtSn
	HnCaMs/wZUI3ZBsZ0ZFOPNNl6V9PGCEEcgvmzowSYlWVIZnUkTr8rnhdn6DNNhg4B7qYdK8SmGTPP
	HoJWTSTQnxoJ6dDRgivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvne-00000008LND-1D6U;
	Mon, 19 May 2025 08:24:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvk2-00000008KwZ-1rKq
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 08:21:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J7GW45022850
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 08:20:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4jHLqJtJR/H3L9Lz2o55CQrsBxGQmwWALeH+iCx6r2k=; b=lnnAGXAkX9bvVc+c
	MDoiNeKyAZ6+YHh6Vm64VTQCAiO4OxKUniUBaOMq0tP2wWjDB7Iu6WWcTdkfdXz6
	jJUXmlPxXEyhicgAIkEwocycqLxUVMzw+jIhSA9Tp3zlNdU6hlOQGTAcrplMLPoA
	Fs3damtX6wYljLhPAsJ+cFNhp7v8mCP0GnsMASEjlJ9YQPY1vuIpUuOh/B940hSb
	eJKDHYKCBXRQnNhbpEa6la2zSQpTR2DULiV/mMIpBdx3VHIOmj5bJiaRpSAT6IvB
	NNHqF91fm3AOwMQSmnZBJBTO3AG7VjbZ33rSOFsx7DBNPRS8odkGqyosYAjbSSLY
	pNm27w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r041r5fu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 08:20:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b1f8069e9e0so154807a12.1
        for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 01:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747642856; x=1748247656;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4jHLqJtJR/H3L9Lz2o55CQrsBxGQmwWALeH+iCx6r2k=;
        b=MaVE2gip7IQl53tq3gAqmlBwcllnDQe7i3+LC1dVHWRc+C3aej47wn0XUoAvgTarFl
         MeB9gpVkxbPus7nTv1pXNSlnIg31x3FGre5cWA06eKiMK2woExEwj3mX4q095qLVuj1s
         eWCF4aQIlTEjhhBaHmfT1m58qwlMC1APWt4lTr/geao7j4QW9AyfKjWGaAGzt0eY1wK1
         uo15bu20TJlHOi9V/Jee+sNHQ0JjSEimEfNkQAHFsaUoFODEWK4aznMrSQ5r/08KACMO
         qSuhMhoT6fV1urbHCZiUjiKeCz0u5ympm/X4EjqNkahOmHT7caIjdL/LfS2adt1TpcVH
         TBaA==
X-Forwarded-Encrypted: i=1; AJvYcCW3ZmxofKbs9tOCEKVv1RGfTf92H478KexDCyPUV3GxvLk8EeVNVvqnNh2NhbpeVFbu9jjv+klZ+E0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRK6iVuV4J9JgJZv+laxY7QQbRUD7s/DhVItPi8x9aeYJcEsy5
	rn05+pzQL0jOfZauLGCqk7HQM5PX99a6jnqQP5J2/MvWH2I0zBkCSUNtA9tFSeD4EEjFMzm+MKR
	TpcGiwlp5tC37tltCj17z7cxBS5g/NijcNi0j7rB/rPquWQZdm9wphQRmBKWlCX/+GTpx
X-Gm-Gg: ASbGncsnsO47yxLAoEzVGPfusepf1FRRLjzGb+/vbHNYKYY03nHsuZ1+1vx0/cISKfY
	xNdKH9itBh3+rdHQdw2yvkkF83fe3+Md9RFFd2E3Oy5Lqw8ALl+Lg88qpjG7APK2btDA72a10OK
	EGEJzcxIHdR1OMzl7cNQU6OyA2BHWSPjSeuGa+xu8XFYQFJKLyHato0Z2erUF9QwbZZow8XX3g8
	NDRMWQxvPhKl2MR0f9NV1P5xNn2OWF+sSh9kiHlxgRszt4FV9FbIEc7l3TDeO2j4zZheCrDO056
	jqokdB5KxSScqTZs+4d3VoulrVT0h1Kfq+Bg8EYhGghLWxm4AjBwEhSL2zqeZfDaKv32Nhz4Td3
	C
X-Received: by 2002:a05:6a20:3d92:b0:215:e979:762f with SMTP id adf61e73a8af0-216219c656fmr6623529637.7.1747642856066;
        Mon, 19 May 2025 01:20:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5PAUzn0GvTsPJRCt2MyJ3o5jDvz2ViCLBGKCluWBuApDplJDI6WCxq8gdmWk+kRTeXlzKjw==
X-Received: by 2002:a05:6a20:3d92:b0:215:e979:762f with SMTP id adf61e73a8af0-216219c656fmr6623485637.7.1747642855515;
        Mon, 19 May 2025 01:20:55 -0700 (PDT)
Received: from [10.133.33.47] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eb0a9ac9sm5654824a12.78.2025.05.19.01.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 01:20:55 -0700 (PDT)
Message-ID: <84500975-eb32-471f-a64a-283e885ae84e@oss.qualcomm.com>
Date: Mon, 19 May 2025 16:20:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        dmitry.baryshkov@oss.qualcomm.com
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
 <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
 <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
 <e647d143-dc6e-483d-ac81-2733fb526fc3@quicinc.com>
 <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
 <9fb34496-d823-414a-b7dc-54b4677829e5@quicinc.com>
 <td4dkb6qoxfa7lfmfszlowov6qxdukqq5qnwnhmajnskr5mu2u@todczb6inttv>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <td4dkb6qoxfa7lfmfszlowov6qxdukqq5qnwnhmajnskr5mu2u@todczb6inttv>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA3OCBTYWx0ZWRfX9TWiS7IkyCZb
 rOrq+TGbxOJUM7AUt8f5mipR2qtU+CTaoQwoP9N9JASuQ1NG6Nj23tmS1L5LgcJjhXi833oM1ql
 Nv2w+KbroWoBO32XHCstjQWniunk/drkYwV8y8bvHXJpoR7PQu6z89ZTk59n/vy1Gbc8QJXwJoD
 KeJ8cpXkOHK5ucY8X0mU0togR+c+kXx/ouc9VWVg/sNE1crm4NQHEkcuwWtC7Tq1vdKQFe3rVuq
 meDI0cBNnOTG1RAAfYXtRHQYYrhqfExnrlCLB274ET6zP22NwvlgDE8wfDlgFFi5AjvUu7bpUzB
 uI+R/XWRatIFK5cqYOA5T917psxbGpcGJ0rdebzPmKnKXrpcFEC6D2J95EKN3+CGdaP8VsipDir
 0iHa/JJR+ILgnSA/PNHDkCwIHhPZJrMXX8psdSKVAhZyRZQhQ94itt9M0eHbSAiULJYARgPp
X-Proofpoint-ORIG-GUID: 3Wm2jc7FNi6bxNcnLUV7Jb_Yqgb-FUU5
X-Proofpoint-GUID: 3Wm2jc7FNi6bxNcnLUV7Jb_Yqgb-FUU5
X-Authority-Analysis: v=2.4 cv=HIjDFptv c=1 sm=1 tr=0 ts=682ae9e9 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=Oh2cFVv5AAAA:8
 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=mb-A_Saak2OZ3Y13WnMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=7KeoIwV6GZqOttXkcoxL:22 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 clxscore=1011
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_012058_505288_D43CE905 
X-CRM114-Status: GOOD (  30.90  )
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

CgpPbiAzLzYvMjAyNSA1OjE0IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
TWFyIDA1LCAyMDI1IGF0IDA2OjE2OjQ1UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pgo+
Pgo+PiBPbiAxMi8yMC8yMDI0IDU6NDUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBP
biBUaHUsIERlYyAxOSwgMjAyNCBhdCAwNjozNjozOFBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90
ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24gMTIvNS8yMDI0IDc6NDAgUE0sIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4+Pj4+IE9uIFRodSwgNSBEZWMgMjAyNCBhdCAxMzoyOCwgWGlhbmd4dSBZaW4gPHF1
aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+
Pj4gT24gMTIvMi8yMDI0IDY6NDYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+Pj4g
T24gTW9uLCBEZWMgMDIsIDIwMjQgYXQgMDQ6NDA6MDVQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDExLzI5LzIwMjQgOTo1MCBQTSwgRG1p
dHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4+Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQgYXQgMDk6
NTksIFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+IEFkZCB0aGUgYWJpbGl0eSB0byBjb25maWd1cmUgbGFuZSBtYXBwaW5n
IGZvciB0aGUgRFAgY29udHJvbGxlci4gVGhpcyBpcwo+Pj4+Pj4+Pj4+IHJlcXVpcmVkIHdoZW4g
dGhlIHBsYXRmb3JtJ3MgbGFuZSBtYXBwaW5nIGRvZXMgbm90IGZvbGxvdyB0aGUgZGVmYXVsdAo+
Pj4+Pj4+Pj4+IG9yZGVyICgwLCAxLCAyLCAzKS4gVGhlIG1hcHBpbmcgcnVsZXMgYXJlIG5vdyBj
b25maWd1cmFibGUgdmlhIHRoZQo+Pj4+Pj4+Pj4+IGBkYXRhLWxhbmVgIHByb3BlcnR5IGluIHRo
ZSBkZXZpY2V0cmVlLiBUaGlzIHByb3BlcnR5IGRlZmluZXMgdGhlCj4+Pj4+Pj4+Pj4gbG9naWNh
bC10by1waHlzaWNhbCBsYW5lIG1hcHBpbmcgc2VxdWVuY2UsIGVuc3VyaW5nIGNvcnJlY3QgbGFu
ZQo+Pj4+Pj4+Pj4+IGFzc2lnbm1lbnQgZm9yIG5vbi1kZWZhdWx0IGNvbmZpZ3VyYXRpb25zLgo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHF1aWNfeGlh
bmd4dXlAcXVpY2luYy5jb20+Cj4+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pj4gIGRyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfY2F0YWxvZy5jIHwgMTEgKysrKystLS0tLS0KPj4+Pj4+Pj4+PiAgZHJp
dmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nLmggfCAgMiArLQo+Pj4+Pj4+Pj4+ICBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyAgICB8ICAyICstCj4+Pj4+Pj4+Pj4gIGRyaXZl
cnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuYyAgIHwgMTMgKysrKysrKysrKy0tLQo+Pj4+Pj4+
Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICB8ICAzICsrKwo+Pj4+Pj4+
Pj4+ICA1IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBAQCAtNDYxLDYgKzQ2MCw3IEBAIHN0YXRpYyBp
bnQgbXNtX2RwX3BhbmVsX3BhcnNlX2R0KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5l
bCkKPj4+Pj4+Pj4+PiAgICAgICAgIHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSAqcGFuZWw7
Cj4+Pj4+Pj4+Pj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGU7Cj4+Pj4+Pj4+
Pj4gICAgICAgICBpbnQgY250Owo+Pj4+Pj4+Pj4+ICsgICAgICAgdTMyIGxhbmVfbWFwW0RQX01B
WF9OVU1fRFBfTEFORVNdID0gezAsIDEsIDIsIDN9Owo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gICAg
ICAgICBwYW5lbCA9IGNvbnRhaW5lcl9vZihtc21fZHBfcGFuZWwsIHN0cnVjdCBtc21fZHBfcGFu
ZWxfcHJpdmF0ZSwgbXNtX2RwX3BhbmVsKTsKPj4+Pj4+Pj4+PiAgICAgICAgIG9mX25vZGUgPSBw
YW5lbC0+ZGV2LT5vZl9ub2RlOwo+Pj4+Pj4+Pj4+IEBAIC00NzQsMTAgKzQ3NCwxNyBAQCBzdGF0
aWMgaW50IG1zbV9kcF9wYW5lbF9wYXJzZV9kdChzdHJ1Y3QgbXNtX2RwX3BhbmVsICptc21fZHBf
cGFuZWwpCj4+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgIGNudCA9IGRybV9vZl9nZXRfZGF0YV9s
YW5lc19jb3VudChvZl9ub2RlLCAxLCBEUF9NQVhfTlVNX0RQX0xBTkVTKTsKPj4+Pj4+Pj4+PiAg
ICAgICAgIH0KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IC0gICAgICAgaWYgKGNudCA+IDApCj4+Pj4+
Pj4+Pj4gKyAgICAgICBpZiAoY250ID4gMCkgewo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICBz
dHJ1Y3QgZGV2aWNlX25vZGUgKmVuZHBvaW50Owo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+PiAgICAg
ICAgICAgICAgICAgbXNtX2RwX3BhbmVsLT5tYXhfZHBfbGFuZXMgPSBjbnQ7Cj4+Pj4+Pj4+Pj4g
LSAgICAgICBlbHNlCj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGVuZHBvaW50ID0gb2ZfZ3Jh
cGhfZ2V0X2VuZHBvaW50X2J5X3JlZ3Mob2Zfbm9kZSwgMSwgLTEpOwo+Pj4+Pj4+Pj4+ICsgICAg
ICAgICAgICAgICBvZl9wcm9wZXJ0eV9yZWFkX3UzMl9hcnJheShlbmRwb2ludCwgImRhdGEtbGFu
ZXMiLCBsYW5lX21hcCwgY250KTsKPj4+Pj4+Pj4+PiArICAgICAgIH0gZWxzZSB7Cj4+Pj4+Pj4+
Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xhbmVzID0gRFBfTUFYX05V
TV9EUF9MQU5FUzsgLyogNCBsYW5lcyAqLwo+Pj4+Pj4+Pj4+ICsgICAgICAgfQo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+IFdoeT8gVGhpcyBzb3VuZHMgbW9yZSBsaWtlIGRwX2NhdGFsb2cgb3IgKGFmdGVy
IHRoZSByZWZhY3RvcmluZyBhdAo+Pj4+Pj4+Pj4gWzFdKSBkcF9jdHJsLiBCdXQgbm90IHRoZSBk
cF9wYW5lbC4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Byb2plY3QvZnJlZWRyZW5vL3Nlcmllcy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRl
ZAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4gV2UgYXJlIHVzZWQgdGhlIHNhbWUgcHJvcCAnZGF0YS1sYW5l
cyA9IDwzIDIgMCAxPicgaW4gbWRzc19kcF9vdXQgdG8ga2VlcCBzaW1pbGFyIGJlaGF2aW91ciB3
aXRoIGRzaV9ob3N0X3BhcnNlX2xhbmVfZGF0YS4KPj4+Pj4+Pj4gRnJvbSB0aGUgbW9kdWxlcyB1
c2VkLCBjYXRhbG9nIHNlZW1zIG1vcmUgYXBwcm9wcmlhdGUsIGJ1dCBzaW5jZSB0aGUgbWF4X2Rw
X2xhbmVzIGlzIHBhcnNlZCBhdCBkcF9wYW5lbCwgaXQgaGFzIGJlZW4gcGxhY2VkIGhlcmUuCj4+
Pj4+Pj4+IFNob3VsZCBsYW5lX21hcCBwYXJzaW5nIGluIG1zbV9kcF9jYXRhbG9nX2dldCwgYW5k
IGtlZXAgbWF4X2RwX2xhbmVzIHBhcnNpbmcgYXQgdGhlIGRwX3BhbmVsPwo+Pj4+Pj4+Cj4+Pj4+
Pj4gbXNtX2RwX2NhdGFsb2dfZ2V0KCkgaXMgZ29pbmcgdG8gYmUgcmVtb3ZlZC4gU2luY2UgdGhl
IGZ1bmN0aW9ucyB0aGF0Cj4+Pj4+Pj4gYXJlIGdvaW5nIHRvIHVzZSBpdCBhcmUgaW4gZHBfY3Ry
bCBtb2R1bGUsIEkgdGhvdWdodCB0aGF0IGRwX2N0cmwuYyBpcwo+Pj4+Pj4+IHRoZSBiZXN0IHBs
YWNlLiBBIGJldHRlciBvcHRpb24gbWlnaHQgYmUgdG8gbW92ZSBtYXhfZHBfbGFuZXMgYW5kCj4+
Pj4+Pj4gbWF4X2RwX2xpbmtfcmF0ZSB0byBkcF9saW5rLmMgYXMgdGhvc2UgYXJlIGxpbmsgcGFy
YW1zLiBUaGVuCj4+Pj4+Pj4gbGFuZV9tYXBwaW5nIGFsc28gbG9naWNhbGx5IGJlY29tZXMgYSBw
YXJ0IG9mIGRwX2xpbmsgbW9kdWxlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQnV0IG5vdyBJIGhhdmUgYSBt
b3JlIGltcG9ydGFudCBxdWVzdGlvbiAodHJpZ2dlcmVkIGJ5IEtyaXNobmEncyBlbWFpbAo+Pj4+
Pj4+IGFib3V0IFNBUjIxMzBQJ3MgVVNCKTogaWYgdGhlIGxhbmVzIGFyZSBzd2FwcGVkLCBkb2Vz
IFVTQiAzIHdvcmsgb24gdGhhdAo+Pj4+Pj4+IHBsYXRmb3JtPyBPciBpcyBpdCBiZWluZyBkZW1v
dGVkIHRvIFVTQiAyIHdpdGggbm9ib2R5IG5vdGljaW5nIHRoYXQ/Cj4+Pj4+Pj4KPj4+Pj4+PiBJ
ZiBsYW5lcyAwLzEgYW5kIDIvMyBhcmUgc3dhcHBlZCwgc2hvdWxkbid0IGl0IGJlIGhhbmRsZWQg
aW4gdGhlIFFNUAo+Pj4+Pj4+IFBIWSwgd2hlcmUgd2UgaGFuZGxlIGxhbmVzIGFuZCBvcmllbnRh
dGlvbiBzd2l0Y2hpbmc/Cj4+Pj4+Pj4KPj4+Pj4+IEkgaGF2ZSBjaGVja2VkIHRoZSBEUCBoYXJk
d2FyZSBwcm9ncmFtbWluZyBndWlkZSBhbmQgYWxzbyBkaXNjdXNzZWQgaXQgd2l0aCBLcmlzaG5h
Lgo+Pj4+Pj4KPj4+Pj4+IEFjY29yZGluZyB0byB0aGUgSFBHIHNlY3Rpb24gJzMuNC4yIFBOIGFu
ZCBMYW5lIFN3YXA6IFBIWSBzdXBwb3J0cyBQTiBzd2FwIGZvciBtYWlubGluayBhbmQgQVVYLCBi
dXQgaXQgZG9lc24ndCBzdXBwb3J0IGxhbmUgc3dhcCBmZWF0dXJlLicKPj4+Pj4+Cj4+Pj4+PiBU
aGUgbGFuZSBzd2FwIG1haW5seSByZWZlcnMgdG8gdGhlIGxvZ2ljYWwgdG8gcGh5c2ljYWwgbWFw
cGluZyBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVyIGFuZCB0aGUgRFAgUEhZLiBUaGUgUEhZIGhh
bmRsZXMgcG9sYXJpdHkgaW52ZXJzaW9uLCBhbmQgdGhlIGxhbmUgbWFwIGRvZXMgbm90IGFmZmVj
dCBVU0IgYmVoYXZpb3IuCj4+Pj4+Pgo+Pj4+Pj4gT24gdGhlIFFDUzYxNSBwbGF0Zm9ybSwgd2Ug
aGF2ZSBhbHNvIHRlc3RlZCB3aGVuIERQIHdvcmtzIHdpdGggbGFuZSBzd2FwLCBvdGhlciBVU0Ig
My4wIHBvcnRzIGNhbiB3b3JrcyBub3JtYWxseSBhdCBzdXBlciBzcGVlZC4KPj4+Pj4KPj4+Pj4g
Ik90aGVyIFVTQiAzLjAgcG9ydHMiPyBXaGF0IGRvZXMgdGhhdCBtZWFuPyBQbGVhc2UgY29ycmVj
dCBtZSBpZiBJJ20KPj4+Pj4gd3JvbmcsIHlvdSBzaG91bGQgaGF2ZSBhIFVTQitEUCBjb21ibyBw
b3J0IHRoYXQgaXMgYmVpbmcgbWFuYWdlZCB3aXRoCj4+Pj4+IGNvbWJvIFBIWS4gRG9lcyBVU0Ig
MyB3b3JrIG9uIHRoYXQgcG9ydD8KPj4+Pj4KPj4+Pj4gSW4gb3RoZXIgd29yZHMsIHdoZXJlIHRo
ZSBvcmRlciBvZiBsYW5lcyBpcyBhY3R1YWxseSBpbnZlcnRlZD8gQmV0d2Vlbgo+Pj4+PiBEUCBh
bmQgY29tYm8gUEhZPyBXaXRoaW4gY29tYm8gUEhZPyBCZXR3ZWVuIHRoZSBQSFkgYW5kIHRoZSBw
aW5vdXQ/Cj4+Pj4+IEdyYW50ZWQgdGhhdCBTTTYxNTAgd2FzIHN1cHBvcnRlZCBpbiBtc20tNC4x
NCBjb3VsZCB5b3UgcG9zc2libHkgcG9pbnQKPj4+Pj4gb3V0IGEgY29ycmVzcG9uZGluZyBjb21t
aXQgb3IgYSBzZXQgb2YgY29tbWl0cyBmcm9tIHRoYXQga2VybmVsPwo+Pj4+Pgo+Pj4+IEZvciAi
T3RoZXIgVVNCIDMuMCBwb3J0cyIsIGFzIHJlcGxpZWQgaW4gVVNCQyBkcml2ZXIsIFVTQjMgcHJp
bWFyeSBwaHkgd29ya3MgZm9yIG90aGVyIGZvdXIgVVNCIHR5cGUtQSBwb3J0Lgo+Pj4KPj4+IFNv
IGlmIHRoYXQncyB0aGUgVVNCMyBwcmltYXJ5LCB0aGVuIHdoeSBkbyB5b3UgbWVudGlvbiBoZXJl
IGF0IGFsbD8gV2UKPj4+IGFyZSB0YWxpbmcgYWJvdXQgdGhlIHNlY29uZGFyeSBVU0IzICsgRFAu
Cj4+Pgo+PiBPSywgc29ycnkgZm9yIGNvbmZ1c2luZyB5b3UuCj4+Pj4gVGhlIFJFR19EUF9MT0dJ
Q0FMMlBIWVNJQ0FMX0xBTkVfTUFQUElORyBtYXBwaW5nIGRldGVybWluZXMgaG93IGxvZ2ljYWwg
bGFuZXMgKDAsIDEsIDIsIDMpIG1hcCB0byBwaHlzaWNhbCBsYW5lcyBzZW50IHRvIHRoZSBQSFku
Cj4+Pj4gVGhpcyBlbnN1cmVzIGFsaWdubWVudCB3aXRoIGhhcmR3YXJlIHJlcXVpcmVtZW50cy4K
Pj4+PiBUaGUgUEhZ4oCZcyBwb2xhcml0eSBpbnZlcnNpb24gb25seSBhZGp1c3RzIHNpZ25hbCBw
b2xhcml0eSBhbmQgZG9lc27igJl0IGFmZmVjdCBsYW5lIG1hcHBpbmcuCj4+Pj4gQm90aCBEUCBj
dHJsIGFuZCBQSFkgbGFuZSByZWxhdGVkIGNvbmZpZyB3aWxsIG5vdCBhZmZlY3QgVVNCIHBoeS4K
Pj4+Cj4+PiBQcm9iYWJseSB3ZSBtaXN1bmRlcnNhbmQgZWFjaCBvdGhlci4gVGhlIERQIFBIWSBz
aG91bGQgaGF2ZSBvcmllbnRhdGlvbgo+Pj4gc3dpdGNoIHJlZ2lzdGVyLCB3aGljaCBjb250cm9s
cyB3aGV0aGVyIDItbGFuZSBEUCB1c2VzIGxhbmVzIDAvMSBvciAyLzMuCj4+PiBDYW4geW91IHVz
ZSB0aGF0IHJlZ2lzdGVyPwo+Pj4KPj4gWWVzLCBEUCBQSFkgaGF2ZSBvcmllbnRhdGlvbiByZWdp
c3RlciBhcyBiZWxvdy4KPj4gRFBfUEhZX0RQX1BIWV9DRkdfMSgweDg4ZTkwMTQpIGJpdCg3KSBT
V19QT1JUU0VMRUNUCj4+PiBBbHNvLCBjb3VsZCB5b3UgX3BsZWFzZV8gYW5zd2VyIHRoZSBxdWVz
dGlvbiB0aGF0IEkgaGF2ZSBhc2tlZD8gSXMgdGhlCj4+PiBvcmRlciBvZiBsYW5lcyBpbnZlcnRl
ZCBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVyIGFuZCBEUCBQSFk/IE9yIGJldHdlZW4KPj4+IERQ
IFBIWSBhbmQgdGhlIERQIGNvbm5lY3Rvcj8gSWYgb25lIHVzZXMgVVNCMyBzaWduYWxzIGNvbWlu
ZyBmcm9tIHRoaXMKPj4+IHBvcnQgKHllcywgb24gdGhlIG90aGVyIGJvYXJkLCBub3Qgb24gdGhl
IFJpZGUpLCB3b3VsZCB0aGV5IGFsc28gbmVlZCB0bwo+Pj4gc3dpdGNoIHRoZSBvcmRlciBvZiBV
U0IzIGxhbmVzPyBJZiBvbmUgdXNlcyBhIERQLW92ZXItVVNCLUMsIGFyZSBEUAo+Pj4gbGFuZXMg
YXJlIHN3YXBwZWQ/Cj4+Pgo+PiBJdCdzIGludmVydGVkIGJldHdlZW4gdGhlIERQIGNvbnRyb2xs
ZXIgYW5kIERQIFBIWS4KPj4gSWYgb3RoZXIgdXNlIFVTQjMgb24gdGhlIG90aGVyIGJvYXJkLCB3
aWxsIG5vdCBuZWVkIHN3aXRjaCBvcmRlciBvZiBVU0IzIGxhbmVzLAo+PiBJZiBvbmUgdXNlIERQ
LW92ZXItVVNCLUMsIHRoZW4gbmVlZCBEUCBsYW5lcyBzd2FwLgo+IAo+IFRoYW5rcyEKPiAKPj4+
PiBXaXRob3V0IGV4dHJhIFR5cGUtQyBtYXBwaW5nLCB0aGUgRFAgY29udHJvbGxlcuKAmXMgbWFw
cGluZyBpbmRpcmVjdGx5IGRlY2lkZXMgaG93IHNpZ25hbHMgYXJlIHRyYW5zbWl0dGVkIHRocm91
Z2ggVHlwZS1DLgo+Pj4+IE1hcHBpbmcgZW5zdXJlcyBwcm9wZXIgZGF0YSB0cmFuc21pc3Npb24g
YW5kIGNvbXBhdGliaWxpdHkgYWNyb3NzIGludGVyZmFjZXMuCj4+Pj4KPj4+PiBXZSBvbmx5IGZv
dW5kIHNtNjE1MCBuZWVkIHRoaXMgbGFuZSBtYXBwaW5nIGNvbmZpZywgCj4+Pj4gRm9yIG1zbSA0
LjE0LCBwbGVhc2UgcmVmZXIgdGhlc2UgbGlua3MsCj4+Pj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2ds
ZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIw
NWQwYzE0ODgvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjE1MC1zZGUuZHRzaSAocWNvbSxs
b2dpY2FsMnBoeXNpY2FsLWxhbmUtbWFwKQo+Pj4+IGh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3Vy
Y2UuY29tL2tlcm5lbC9tc20vKy9hZjAzZWVmN2Q0YzNjYmQxZmUyNmM2N2Q0ZjE5MTViMDVkMGMx
NDg4L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFyc2VyLmMgKGRwX3BhcnNlcl9taXNjKQo+
Pj4+IGh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5lbC9tc20vKy9hZjAzZWVm
N2Q0YzNjYmQxZmUyNmM2N2Q0ZjE5MTViMDVkMGMxNDg4L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAv
ZHBfY2F0YWxvZ192MjAwLmMgKGRwX2NhdGFsb2dfY3RybF9sYW5lX21hcHBpbmdfdjIwMCkKPj4+
Pgo+Pj4+IElmIG5lZWQgcHJvY2VzcyBvcmllbnRhdGlvbiBpbmZvIGxpa2UgZHBfY2F0YWxvZ19j
dHJsX2xhbmVfbWFwcGluZ192MjAwLCAKPj4+PiB0aGVuIAo+Pj4+IGlmIGltcGxlbWVudCBpbiBE
UCBwaHksIHRoZW4gd2UgbmVlZCBjb25maWcgZHBfbGluayByZWdpc3RlciBpbiBQSFksCj4+Pj4g
aWYgaW1wbGVtZW50IGluIERQIGxpbmssIHRoZW4gd2UgbmVlZCBwYXNzIG9yaWVudGF0aW9uIGlu
Zm8gdG8gRFAgZHJpdmVyLCBwZXJoYXBzIHdlIGNvdWxkIGFkZCBhIG5ldyBhdHRyaWJ1dGUgdG8g
dGhlIHBoeV9jb25maWd1cmVfb3B0c19kcCBzdHJ1Y3R1cmUgdG8gcGFzcyB0aGlzLgo+Pj4+IERv
IHlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucz8KPj4+Cj4+PiBEb2VzIFNXX1BPUlRTRUxfVkFMIGFm
ZmVjdCB0aGUgRFAgbGFuZXMgb24gdGhpcyBwbGF0Zm9ybT8KPj4+Cj4+IFNXX1BPUlRTRUxfVkFM
IGZvciBVU0IzUEhZX1BDU19NSVNDX1RZUEVDX0NUUkwgd2lsbCBub3QgYWZmZWN0IERQIGxhbmVz
IGluIHRoaXMgRFAgb3IgVVNCMyBjaGlwIHNlcmllcy4KPj4gVVNCMyB3aWxsIHVzZSBVU0IzUEhZ
X1BDU19NSVNDX1RZUEVDX0NUUkwoU1dfUE9SVFNFTF9WQUwgQklUXzApIGFuZCBEUCB3aWxsIHVz
ZSBEUF9QSFlfRFBfUEhZX0NGR18xKFNXX1BPUlRTRUxFQ1QgQklUXzcpCj4gCj4gSXMgaXQgcG9z
c2libGUgdG8gc2V0IHRoaXMgYml0IGZyb20gdGhlIFBIWSBkcml2ZXIgcmF0aGVyIHRoYW4gcmVt
YXBwaW5nCj4gdGhlIGxhbmVzIGluIHRoZSBEUCBkcml2ZXI/Cj4gCkkgaGF2ZSB2ZXJpZmllZCBh
bmQgY29uZmlybWVkIHdpdGggY2hpcCB2ZXJpZmljYXRpb24gdGVhbS4KCldlIGNvbmZpZ3VyZWQg
dGhlIGxvZ2ljYWwycGh5c2ljYWwgbWFwcGluZyBwcmltYXJpbHkgdG8gY29ycmVjdCB0aGUgUEhZ
IG91dHB1dCBtYXBwaW5nLgpDdXJyZW50bHksIHRoZSBsb2dpY2FsMnBoeXNpY2FsIG1hcHBpbmcg
ZGVmaW5lcyB0aGUgaW5wdXQtdG8tb3V0cHV0IG1hcHBpbmcgZm9yIHRoZSBEUCBjb250cm9sbGVy
LCAKd2hpbGUgdGhlIFNXX1BPUlRTRUxFQ1QgaW4gUEhZIGRldGVybWluZXMgdGhlIHN3YXBwaW5n
IGJldHdlZW4gUEhZIGlucHV0IHBvcnRzIDDihpQzIGFuZCAx4oaUMi4KV2hlbiB0aGUgRFAgY29u
dHJvbGxlciBpbnB1dCB0byBQSFkgb3V0cHV0IG1hcHBpbmcgaXMgY29ycmVjdGx5IGNvbmZpZ3Vy
ZWQsIFBIWSdzIFNXX1BPUlRTRUxFQ1QgY2FuIGJlIHVzZWQgdG8gaW1wbGVtZW50IGZsaXAgb3Bl
cmF0aW9ucy4gCkhvd2V2ZXIsIGR1ZSB0byB0aGUgaW1wcm9wZXIgbWFwcGluZyBpbXBsZW1lbnRh
dGlvbiBvbiBUYWxvcyBwbGF0Zm9ybXMsIHVzaW5nIFNXX1BPUlRTRUxFQ1Qgd291bGQgcmVxdWly
ZSBhZGRpdGlvbmFsIG1vZGlmaWNhdGlvbnMgdG8gdGhlIGxvZ2ljYWwycGh5c2ljYWwgbWFwcGlu
Zy4KCkZvciBleGFtcGxlLCBvdGhlciBwbGF0Zm9ybSBleGNlcHQgVGFsb3MgaW1wbGVtZW50YXRp
b25zIHRoZSBkYXRhLWxhbmVzIG1hcHBpbmcgZm9sbG93cyA8MCAxIDIgMz4gc2VxdWVuY2UuIApB
IHByb3BlciBmbGlwIG9wZXJhdGlvbiBzaG91bGQgcHJvZHVjZSA8MyAyIDEgMD4sIHdoaWNoIGNh
biBiZSBlcXVpdmFsZW50bHkgYWNoaWV2ZWQgZWl0aGVyIHRocm91Z2ggRFAgZHJpdmVyIGNvbmZp
Z3VyYXRpb24gb3IgUEhZIHBvcnRzZWxlY3QuCkJ1dCBpbiB0aGUgVGFsb3Mgd2hlcmUgdGhlIGlu
aXRpYWwgbWFwcGluZyBpcyBhcnJhbmdlZCBhcyA8MyAyIDAgMT4sIHRoZSBleHBlY3RlZCBwb3N0
LWZsaXAgc2VxdWVuY2Ugc2hvdWxkIGJlIDwwIDEgMyAyPi4gCnRoZW4gd2hlbiBhcHBseWluZyBQ
SFkgU1dfUE9SVFNFTEVDVCBzZXR0aW5nIDEsIHRoZSBQSFkgb3V0cHV0IGJlY29tZXMgPDEgMCAy
IDM+IHdoaWNoIG1pc21hdGNoZXMgdGhlIGV4cGVjdGVkIHBhdHRlcm4uCgpUbyBtYWludGFpbiBj
cm9zcy1wbGF0Zm9ybSBjb21wYXRpYmlsaXR5IGJldHdlZW4gVGFsb3MgYW5kIG90aGVyIHBsYXRm
b3JtcywgcmVjb21tZW5kIHRoZSBmbGlwIGhhbmRsaW5nIGF0IHRoZSBEUCBkcml2ZXIgbGV2ZWwg
c3VjaCBsaWtlIGRwX2NhdGFsb2dfY3RybF9sYW5lX21hcHBpbmdfdjIwMCBpbiBzbTYxNTAuCj4+
Pj4KPj4+Pj4+Cj4+Pj4+PiBBZGRpdGlvbmFsbHksIGlmIGl0IHdlcmUgcGxhY2VkIG9uIHRoZSBQ
SFkgc2lkZSwgdGhlIFBIWSB3b3VsZCBuZWVkIGFjY2VzcyB0byBkcF9saW5r4oCZcyBkb21haW4g
d2hpY2ggY2FuIGFjY2VzcyBSRUdfRFBfTE9HSUNBTDJQSFlTSUNBTF9MQU5FX01BUFBJTkcuCj4+
Pj4+Cj4+Pj4+IEkgd2FzIHRoaW5raW5nIGFib3V0IGludmVydGluZyB0aGUgU1dfUE9SVFNFTF9W
QUwgYml0Lgo+Pj4+Pgo+Pj4+Pj4gVGhlcmVmb3JlLCB3ZSBiZWxpZXZlIHRoYXQgdGhlICBtYXhf
ZHBfbGlua19yYXRlLG1heF9kcF9sYW5lcyBhbmQgbGFuZV9tYXAgbW92ZSB0byBkcF9saW5rIHNp
ZGUgaXMgYmV0dGVyLgo+Pj4+Pj4KPj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4gKyAgICAgICBtZW1j
cHkobXNtX2RwX3BhbmVsLT5sYW5lX21hcCwgbGFuZV9tYXAsIG1zbV9kcF9wYW5lbC0+bWF4X2Rw
X2xhbmVzICogc2l6ZW9mKHUzMikpOwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gICAgICAgICBtc21f
ZHBfcGFuZWwtPm1heF9kcF9saW5rX3JhdGUgPSBtc21fZHBfcGFuZWxfbGlua19mcmVxdWVuY2ll
cyhvZl9ub2RlKTsKPj4+Pj4+Pj4+PiAgICAgICAgIGlmICghbXNtX2RwX3BhbmVsLT5tYXhfZHBf
bGlua19yYXRlKQo+Pj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rw
L2RwX3BhbmVsLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPj4+Pj4+Pj4+
PiBpbmRleCAwZTk0NGRiM2FkZjJmMTg3ZjMxMzY2NGZlODBjZjU0MGVjN2ExOWYyLi43NjAzYjky
YzMyOTAyYmQzZDQ0ODU1MzliZDYzMDg1MzdmZjc1YTJjIDEwMDY0NAo+Pj4+Pj4+Pj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaAo+Pj4+Pj4+Pj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaAo+Pj4+Pj4+Pj4+IEBAIC0xMSw2ICsxMSw4IEBA
Cj4+Pj4+Pj4+Pj4gICNpbmNsdWRlICJkcF9hdXguaCIKPj4+Pj4+Pj4+PiAgI2luY2x1ZGUgImRw
X2xpbmsuaCIKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+ICsjZGVmaW5lIERQX01BWF9OVU1fRFBfTEFO
RVMgICAgNAo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+PiAgc3RydWN0IGVkaWQ7Cj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+PiAgc3RydWN0IG1zbV9kcF9kaXNwbGF5X21vZGUgewo+Pj4+Pj4+Pj4+IEBAIC00
Niw2ICs0OCw3IEBAIHN0cnVjdCBtc21fZHBfcGFuZWwgewo+Pj4+Pj4+Pj4+ICAgICAgICAgYm9v
bCB2aWRlb190ZXN0Owo+Pj4+Pj4+Pj4+ICAgICAgICAgYm9vbCB2c2Nfc2RwX3N1cHBvcnRlZDsK
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+ICsgICAgICAgdTMyIGxhbmVfbWFwW0RQX01BWF9OVU1fRFBf
TEFORVNdOwo+Pj4+Pj4+Pj4+ICAgICAgICAgdTMyIG1heF9kcF9sYW5lczsKPj4+Pj4+Pj4+PiAg
ICAgICAgIHUzMiBtYXhfZHBfbGlua19yYXRlOwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+PiAtLQo+Pj4+Pj4+Pj4+IDIuMjUuMQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gLS0KPj4+Pj4+Pj4gbGludXgtcGh5IG1haWxpbmcg
bGlzdAo+Pj4+Pj4+PiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+Pj4+PiBodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkKPj4+Pj4+
Pgo+Pj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4KPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
