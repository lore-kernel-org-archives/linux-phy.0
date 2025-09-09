Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B94FCA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 10:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nm+NvhJRN4PhpujeyecqeSuGABrIY7+Gj+PcQYdgngI=; b=4w9zz71mmxJd/Q
	r5mP679l3JL0zJnSL9qPh8XKom6wdhrmiJvpQf2YkY7RWDQwSI4gJoLgPboR6SLyZi9YecrVMrWjk
	k23oNU27MJMeyiJhhB2p3VN38sV7rUzvaDuRstaUxvgqigvSpA4FzNUzsnDjEOGg5W2I2U5CAmy9H
	tTbjTwTOhXo7t7cjR11JmbnVL0Ie0zGYS6jTwOPGMoousu0EtGiMmB+0lJCSXh6NevYdcTwYM4+6K
	IfEQfB6Rxw5teFDvd5M4e3xTywt2c/VMEmFJ95gHgKtptpPKkybwzc5SqPFLSxTtxY/Sc/zC8rWN+
	cbJ2hlQSTNrXoK0CDSMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvM8-00000006IRK-3D0x;
	Tue, 09 Sep 2025 10:13:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtyu-00000005fTe-2vjH
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 08:45:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SXps004766
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 08:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fa2kQFxYmWf21zOyKAAlQ46RUigKSHEniPLTl0DpNvE=; b=hkE1o8KVzS1Y7pef
	cxBBP/fMEkMfU37evIwBNfO6mpmoR+fu/q4MVQqOETTeaWOZvwcHIEGZYwGRsTY0
	+cfHkxArRvympOPyHk0/rH/JkRJhWTmha9EMAUaQ2QDbfwyrCLPAZxZjhaCAgMln
	2mywVmvvhLHGmMcsyzvCZeB0VCDKjzaD72JNNwXCXbV49vGI6oJxagiYHL2CbLjo
	4TRzj9Lfn4QPcxPG6670XG8xGBYISDjkVhEmK2KU9eazuBVzRdc4Ri8Te/X0NjfU
	sPL1WeTQREDSNkuONoAGpZXWsPLvC58jjo151qQUWi00Nvj0r/NYA0sQTPFxkWPO
	sSJQaw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdvcna-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 08:45:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b34c87dad0so151718701cf.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 01:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407538; x=1758012338;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fa2kQFxYmWf21zOyKAAlQ46RUigKSHEniPLTl0DpNvE=;
        b=EOQ7+Pl8cLCKammX/gmvN/s3MoKBUdOLf4BXyouiF97FYH5BV66L9dRFNQtA+BA8o7
         QC7V7lANG7mRWEWPxpPklDxMJ8rhW9v7QgwNwyWHj4mh3z35U8WeXESoNL37oT3ul5uS
         679cNmX22XlMZnwN4YThT8i4AvCD1nOGrJfA3jIkWasbwpKSXCgEJo0whPvkVeZNIJfw
         11kNjpvmfh5YlPTqI4P9uxthuOUyg+HPpohteY8JaCAvQbtM1Pg5mTs/24b+WzRS+WXM
         sW1me+Eq3ucE+crUaA6TvWV7WM8F1rNpiUNLCiXk2RQ86UbK4X+zY75srar7cbUz7UoK
         vdTA==
X-Forwarded-Encrypted: i=1; AJvYcCUjYVe/ahw/ZqDx85aMG5KV7dAXa4pQvyUJCNH8abAirOqSpzLngz8IDwODdbgpuiPWbI569LOj174=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFENXHCtRcvlxq1lMpFI7t6UB4q+jFlrFWVrl+sIkYpfq8FsS1
	muknz4oXyhj/L6ov8/8hum7U6KHbVmfP7OJ+zotCpYH3Rga+WsgOuCCnJ3wQVV/alFXYml2HHDt
	9HH2WlZfiZO/xwbifHb+O2ExyCoUQYFm6GIdaIG64LtzKepVSA6VP2abBvqfphnZbkJmrTxIKv+
	vx
X-Gm-Gg: ASbGncvZF+p08xkcZG75jd0uuTB2eJCKldx5+WYSzqE57+LETn34DmB5GI56F696paq
	Uv0WfZgRXL5tsxEy2rnoF/6N6c7C26qEKWsoUre2xmAN0rECr8DKtLqq2Qa8cJMfE9oybBX2Rm/
	Nb2U/n7TQLcyYPGNYgwLF+xs2e4frzvDccpUftjIwwf78C4AcfchqzMAoDuJhaniPNkl5xI5CO5
	1pIgpVqnFWhoVzokFjINNKaSQbQau8E2rhtNhz12ERFKttadPCgyO6GVInyMAiV1qNT7LYky1hU
	ylF59+s3yddQBYEZES8EwaiEgnpFOqg/nX7m+qV5POoFR9OVCStNVEl/ASeXe/JddYbGmR+1AMz
	gPV10wtIRxIiyh6J3AqCIPvE0ICH6P+DwPe7VLD+3PggWBqG2uiLy
X-Received: by 2002:a05:622a:5e05:b0:4b6:236:3f32 with SMTP id d75a77b69052e-4b60236429amr79524191cf.77.1757407538506;
        Tue, 09 Sep 2025 01:45:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IER5hHlXx5UTU+e+w4PLfk659mk/2aAhqRlis8BzleBfAkcCxzbcmgNq7E4vUzOfp7AF/REfw==
X-Received: by 2002:a05:622a:5e05:b0:4b6:236:3f32 with SMTP id d75a77b69052e-4b60236429amr79524091cf.77.1757407537960;
        Tue, 09 Sep 2025 01:45:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34715db904csm5157031fa.2.2025.09.09.01.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 01:45:37 -0700 (PDT)
Date: Tue, 9 Sep 2025 11:45:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Message-ID: <3zi57uvggw3zgrj4bfouzjnf56yywjnw46f5ru7krihyrw5bkc@c3xf73ianksa>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
 <c4eeb8a8-2819-4ac5-8dc1-cce209d7cbc4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4eeb8a8-2819-4ac5-8dc1-cce209d7cbc4@oss.qualcomm.com>
X-Proofpoint-GUID: alLj_HXombUH6hm3TdKKnG-l677Ay6Wk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfXzQMra6iJqL8p
 5pwCWyZUTIuc0nnVUAvR/FmWs3BvSDp7nz83eOQDIHXqqukTdVe92TL12ye9dWiQmwj8sjipqmP
 tCH6hzjvzFbhudQA4JzNQXnLNOSrTh90yxi/33CE9CDwWep+d9aFLOFge2QGc09hS29GOgejGWW
 Ntqff332P50EXYJBahHKYc/aNG8qk3ELvZxj+KLLK1EjBt50PBl7b4s+PSQINkM/6e51/XK8fjC
 adEeEOE2is3aSO2O2tX27dysGpvcWTohbohYda2bshcck6Rb3OaqAb08lNkoXCkpYDcJeBIA7Oe
 I4KT3yPFLFZNtiOP7CxBPqmQhJB9eKq/0DkYs02J0BeJr52rwxRvH3vT+TBjCypa6tr4yf/j80w
 9NI65OPC
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68bfe934 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TUuSr-ulYHZ9osfFkC4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: alLj_HXombUH6hm3TdKKnG-l677Ay6Wk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_014540_739470_C33C24EC 
X-CRM114-Status: GOOD (  29.15  )
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

T24gVHVlLCBTZXAgMDksIDIwMjUgYXQgMDQ6Mzk6MjZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOS80LzIwMjUgODozNCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+
IE9uIFdlZCwgQXVnIDIwLCAyMDI1IGF0IDA1OjM0OjQzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdy
b3RlOgo+ID4+IEFkZCBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciBRdWFsY29tbSBTTTYxNTAg
U29DLgo+ID4+IFdoaWxlIFNNNjE1MCBjdXJyZW50bHkgc2hhcmVzIHRoZSBzYW1lIGNvbmZpZ3Vy
YXRpb24gYXMgU0M3MTgwLAo+ID4+IGl0cyBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgZGlmZmVyLiBF
eHBsaWNpdGx5IGxpc3RpbmcgaXQgZW5zdXJlcyBjbGFyaXR5Cj4gPj4gYW5kIGF2b2lkcyBwb3Rl
bnRpYWwgaXNzdWVzIGlmIFNDNzE4MCBzdXBwb3J0IGV2b2x2ZXMgaW4gdGhlIGZ1dHVyZS4KPiA+
Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNv
bW0uY29tPgo+ID4+IC0tLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55YW1sIHwgMSArCj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55YW1s
Cj4gPj4gaW5kZXggOTkyM2IwNjUzMjNiYmFiOTlkZTUwNzliNjc0YTAzMTdmMzA3NDM3My4uOTk2
ZDAxMzJlMDg0ZDQwMWRiODUwMTRhMWE0ZTQ0NWQwMGQ2MmVkOCAxMDA2NDQKPiA+PiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxl
ci55YW1sCj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+ID4+IEBAIC0yNyw2ICsyNyw3IEBAIHByb3BlcnRp
ZXM6Cj4gPj4gICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtZHAKPiA+PiAgICAgICAgICAgIC0g
cWNvbSxzYzgyODB4cC1lZHAKPiA+PiAgICAgICAgICAgIC0gcWNvbSxzZG04NDUtZHAKPiA+PiAr
ICAgICAgICAgIC0gcWNvbSxzbTYxNTAtZHAKPiA+IFRoZSBEUCBNU1QgYmluZGluZ3Mgd2VyZSBB
LWInZWQgYW5kIFItYidlZCBieSBSb2IsIHNvIEkgcGlja2VkIHRoZW0gdXAKPiA+IGludG8gbXNt
LW5leHQtbHVtYWcuIFBsZWFzZSByZWJhc2UgeW91ciBwYXRjaHNldCBvbiB0b3Agb2YgaXQgYW5k
Cj4gPiByZXNlbmQuIEF0IHRoaXMgcG9pbnQgSSdtIGludGVyZXN0ZWQgaW4gRFAgYmluZGluZ3Mg
YW5kIERQIGRyaXZlcgo+ID4gcGF0Y2hlcywgdGhlIFBIWSBwYXJ0IGNhbiBjb21lIHVwIHNlcGFy
YXRlbHkuCj4gPgo+ID4gQXMgZm9yIHRoZSBjb21wYXRpYmlsaXRpZXMsIEkgdGhpbmsgRFAgb24g
U002MTUwIHNob3VsZCBiZSBjb21wYXRpYmxlCj4gPiB3aXRoIGVpdGhlciBEUCBvbiBTRE04NDUg
b3IgRFAgb24gU004MzUwLiBQbGVhc2UgY2hvb3NlIG9uZSB3aGljaCBzdWl0cwo+ID4gYmV0dGVy
Lgo+IAo+IAo+IFN1cmUsIEnigJlsbCBzcGxpdCBvdXQgdGhlIERQIGJpbmRpbmcgYW5kIGNvbnRy
b2xsZXIgY29tcGF0aWJsZSBwYXJ0cyBpbnRvIGHCoAo+IHNlcGFyYXRlIHBhdGNoIHNlcmllcy4K
PiAKPiBTRE04NDUgc2VlbXMgbm90IHN1cHBvcnQgd2lkZV9idXMsIHdoaWxlIFNNODM1MCBsb29r
cyBjbG9zZXIgdG8gU002MTUwLgo+IEJ1dCBJIG5vdGljZWQgU004MzUwIGlzIHN0aWxsIGNvbmZp
Z3VyZWQgYXMgU0M3MTgwIHVuZGVyIGRwX2Rpc3BsYXkgaW4KPiBtc20tbmV4dC1sdW1hZ+KAmXMg
dG9wLCBzbyB0aGlzIGNoYW5nZSB3aWxsIG1haW5seSBhYm91dCB0aGUgYmluZGluZywgcmlnaHQ/
CgpZZXMsIGl0J3Mgb25seSBhYm91dCB0aGUgYmluZGluZ3MgZm9yIG5vdy4gVGhlIGRyaXZlciBz
dXBwb3J0IGZvciBEUCBNU1QKaXMgc3RpbGwgV0lQLgoKPiAKPiAKPiA+PiAgICAgICAgICAgIC0g
cWNvbSxzbTgzNTAtZHAKPiA+PiAgICAgICAgICAgIC0gcWNvbSxzbTg2NTAtZHAKPiA+PiAgICAg
ICAgLSBpdGVtczoKPiA+Pgo+ID4+IC0tIAo+ID4+IDIuMzQuMQo+ID4+CgotLSAKV2l0aCBiZXN0
IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
