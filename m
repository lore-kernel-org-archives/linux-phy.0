Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AB97CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFGBpQTEQTzVeJnSnmQD3LMVY0/fyqQ/10lnmcV9sR4=; b=UlOX+n+XfRPUVE
	/OzoVd9qC93NsiRcip+eVpq6gxqIxhw7C5WIs03ATjnddYWMNilXjrVkXREIaJ6EPg6dDjtJrBFwj
	Gtm3J/QtXIr5lOwSuh/3l7Cjnfj5qFjDreqykcO/OaJtoyBuxjIDkbrJsPJ9jX28UPfrhb/qi9QOV
	tRYWnLVB08nkB4muUUdhcgeTFF4dbSrN36B4MTFrJu0U3QfRJNi7VEKCIq75Ow6DKNm4XgtVIcTvS
	goXaWUsyzgtEFWRIezWapt67M4Q2I2Pcjb3gWr81xmQcgg3EAOBk6EJcoSjV0FlFH2HsHOFyz5nzW
	f+npt9+ORJYsJwkrDJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKtZ-00000001kmk-0YBe;
	Wed, 07 Oct 2026 06:12:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKtW-00000001kmA-3WxP
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:12:52 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974UGx43388607
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:12:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mEeWG7KO8nVXNOa5twFybh1jJy97lZB8PRaYGWiQRVk=; b=JgmJTDGTaC2kRj93
	0Fbp8P9UhNeqSgVkFr6Us1tYGfuHS2rtwiXBc96Jrj4EPeQyxhdndYJvViOTvkmd
	1ZsUb4rGIgfvFQEL6FpLZNXqtCSwHl3nry30P+wAWdDqeuw0aytv4MVn++obdiCV
	Brf3OPFbTfVHF0R8aebxh5+IbnUr8k7qChCJvyoJk+5SQzgKgTPTXFMBMIuEMByh
	RsLi8acLT+iruEA+xutpqIpge0nEe7JApFUQRpt2/TQZEom8KV88Qv+28AxEOPkk
	OzbDNDQyaNFvxILKGxJmAqC9L0DguVL4LED9lzzURaoIpJO0d7LEEBRJHrRZBqpB
	u2RqkA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4xwwv6ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:12:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2df5a65671eso22237725ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791353568; x=1791958368; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mEeWG7KO8nVXNOa5twFybh1jJy97lZB8PRaYGWiQRVk=;
        b=km56tI66KlF4iB3XfSuoZvNrMH+97FExi/HCAyPF5rQBwEgvYuIpDOXbmwHRDNgsa1
         aU7PVuGB5SSEeQg8Hm9h8WYovdf57FNAsElVFBMcyGkTT5qR0Xcwi11GX6nqJnuNO4Y/
         x/IhJI6Szb1zaPDY77dbjZ0eJQGqJYESf5JGv8SsWyWmu+Y4xh2eoGqXl73cdsQGWDBL
         d3dOD7dV36pSs/ObnaBF4qwH+UvRTsXQPninWrHD95kJYHV5Vg4AJjEzS5U0LoajhMOm
         3zHd34y6Yth4G+/sQ4CcAnTMlnCUV2yGGfUgRr0drLiuRNL3adEiZEYA9HNdDnNddl6V
         hIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791353568; x=1791958368;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mEeWG7KO8nVXNOa5twFybh1jJy97lZB8PRaYGWiQRVk=;
        b=BHDg+Mmv1Cqtc9488SBbRfnyUEXBjJ57W3+chyLpEWpnqg2MiBVmplCjcV154AXBlB
         F5ff5piRpNQtQVmw1XMPN8I2QuyKvxhjLjriVuP5yBLUTd/Ij4+hLdgjrZ4BDqtlcKu+
         fOKg726SL6/4W/pVZNcJw61KR/rbCTRYOxcgkui7MKx1Jy/NEMxKQLph6m5X6qxjlSqp
         N8Tklb0wKdjL4Dd02gsF9uKzGFu4LMZmUvlzSvu3+J5CoW2mnDtS4WMRdr90vZU8gnDJ
         ow8cALJvVENKnudcQbq6KsQ6OzX8AFW3F889mhBNdcpU+soFbRCv94Pm3uaPLmlEuZ6w
         aP6g==
X-Forwarded-Encrypted: i=1; AKwUvBxc4lO3dJ1/EqXO/qg2SMY5jhj2m7ufxUC5ltj8Nj+sLzrRvVXU7CYmkDd5icd3NUcG2z37t8jfyFk=@lists.infradead.org
X-Gm-Message-State: AFq9FYKOrTmdBGWYDBdRJz5zNucOP7AQjC1nKmT4qacFZ5jhEkftQuL7
	hIaEtBmX+vKIknFAfHZubx55qL+Qm5FMKTuqgYZrZNOdaflowZ0ua0DJDEK+ZV8EOeCCugnqWx0
	5iJoz89yEr/CJliWklbQxqQrv2vPE1ueREHVb/eIR581kwPaOsJxaVsogLCWuKMMDV2/5Xe7ksc
	x/
X-Gm-Gg: AYBFou08tlPLeFBYaw2oWQ53c02ODQpUU5zjF0Fdozr/AK2Cqqc1cwuZVRxt1akvI8M
	ewgSqu8AoYaz9MXfAtit6NMhCtvgt/vXFNUPOzjwiyNxf+B6mvKZUYFJmUl52mkLcn2gpY3gxCb
	VKb45DGlvW1rcwys0yrkTXCTS1z4EFra003eSZhU/D3fpkWuOPjU0DHoNO5rM5xTWBSsvQhmyFv
	mZWmyZVov54HyRH8ZTn4PAOQCxOuls2Nws59e2OsuJCaLYl3nHFkkJ2MmjbGiMk4AwylwAO7LuI
	eXzIF8eZ2NhYgt5vIGYCnU3DRaotVm0ujW1DTl4xTt+CQS2ZQkHKUhdS3deuOfeHqWpgP6EpCqk
	oQiX06c6kg7WYCEAOvhj6uWNHhNuf
X-Received: by 2002:a17:902:d54f:b0:2e6:1715:e4a6 with SMTP id d9443c01a7336-2e61715e821mr2275645ad.38.1791353567809;
        Tue, 06 Oct 2026 23:12:47 -0700 (PDT)
X-Received: by 2002:a17:902:d54f:b0:2e6:1715:e4a6 with SMTP id d9443c01a7336-2e61715e821mr2275455ad.38.1791353567290;
        Tue, 06 Oct 2026 23:12:47 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e6046fe0e8sm5326635ad.25.2026.10.06.23.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 23:12:46 -0700 (PDT)
Message-ID: <acfba985-ac89-4769-9d9e-d2ce9ecd6383@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 11:42:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/17] phy: qcom: edp: Add Nord-specific register offsets
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
 <t5thwekhz7wyhmyq3nobm37kag6n7ef2z2xpuwrqikv4aqniwc@ha2pjr32ecrp>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <t5thwekhz7wyhmyq3nobm37kag6n7ef2z2xpuwrqikv4aqniwc@ha2pjr32ecrp>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNCBTYWx0ZWRfX2LaHj15hafdb
 eqqQiYpQbni7WyHinZJHYHdiBQ7sZxmtAl0gHAdUtuzUth7BVY3503Zsc7vI33tFs4p9CfYE1yz
 ewitPyXdHr8S8uniRTTAVMo5h8+UxyWPgNgbbCYDWmc6x942FSAnXW1kVOAl5rW2xaopj2cWjYs
 YVAhyNW2Pj6p3s7sykimXy8zP2LwSwqQRT6E8pD64ABhW46carUAP9yKNgPjeUk7G47r6Hc147J
 JG3X8TYVmwYmnudhSvDJ1RgK+CG+BwhzXsW76Bc19hPDXq/xVb7Mm6S+eroFDHqvi3eswLE6ahL
 9mWqAsCVFISithlGxKhTw4gGbbRfuCxUk2FIRsXceV+1CQCnDpg4VeCt1nIfITQQTeHCCQgwcTB
 Qg7no7yvHk/aV9klnULijgpTr7eVBjrY23d90OGoPlt7LjcK7WpRV9ZBuUjjXUHe6Acc7dkCsmi
 gYsm4Ulvv9GQHGDbrvA==
X-Proofpoint-ORIG-GUID: Ps6v0u5AJdZiKFPX79Ox2RExxCiMvD46
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNCBTYWx0ZWRfX9sd9Dc2Km2Ea
 mpUGCeeeu2GwND7b87q7zPSNmKt/pOMSUeKZuoKndtDEiy/3CcPRbP198XCCGOq3eWh8kJLHA6v
 6CuVTVnxf/5mXoQhb3m5AVRL5IGPj0Y=
X-Proofpoint-GUID: Ps6v0u5AJdZiKFPX79Ox2RExxCiMvD46
X-Authority-Analysis: v=2.4 cv=SJXXx+vH c=1 sm=1 tr=0 ts=6ac5e2e0 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ws4HDfdl8TRdMr_wlFsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 malwarescore=0 spamscore=0 phishscore=0 adultscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_231251_003631_71EE4161 
X-CRM114-Status: GOOD (  17.69  )
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

Ck9uIDkvMTQvMjAyNiA1OjI4IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIEZyaSwg
U2VwIDExLCAyMDI2IGF0IDA5OjA2OjM4UE0gKzA1MzAsIE5hYmlnZSBBYWxhIHdyb3RlOgo+PiBG
cm9tOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgo+Pgo+PiBO
b3JkIHJlbG9jYXRlcyBzZXZlcmFsIERQIFBIWSBhbmQgUVNFUkRFUyB2OCBDT00gcmVnaXN0ZXJz
IHJlbGF0aXZlCj4+IHRvIGV4aXN0aW5nIFNvQ3MuICBBZGQgTm9yZC1zcGVjaWZpYyBkZWZpbmVz
IGZvciB0aGUgcmVsb2NhdGVkIGFuZAo+PiBuZXctb25seSByZWdpc3RlcnMgaW4gcGh5LXFjb20t
cW1wLXFzZXJkZXMtZHAtY29tLXY4LmggYW5kCj4+IHBoeS1xY29tLWVkcC5jIHNvIE5vcmQgc2Vx
dWVuY2VzIGNhbiByZWZlcmVuY2UgdGhlbSBieSBuYW1lLgo+IElmIHRoZSByZWdpc3RlcnMgYXJl
IHJlYWxsb2NhdGVkIGl0IHVzdWFsbHkgbWVhbnMgdGhhdCB0aGVyZSBhcmUgb3RoZXIKPiByZWdp
c3RlcnMgYmVpbmcgaW5zZXJ0ZWQgKG9yIGRlbGV0ZWQpLiBBcmUgdGhvc2UgdGhlIG9ubHkgcmVn
aXN0ZXJzCj4gYmVpbmcgY2hhbmdlZD8KWWVzLCBvbmx5IGZldyByZWdpc3RlciBvZmZzZXQgaXMg
Y2hhbmdlZCB0aGF0IGlzIHRha2VuIGNhcmUgaW4gdGhpcyBjaGFuZ2UuCj4+IFNpZ25lZC1vZmYt
Ynk6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+Cj4+IFNpZ25l
ZC1vZmYtYnk6IE5hYmlnZSBBYWxhIDxuYWJpZ2UuYWFsYUBvc3MucXVhbGNvbW0uY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyAgICAgICAgICAgICAg
ICAgICB8IDEwICsrKysrKysrKysKPj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtcXNlcmRlcy1kcC1jb20tdjguaCB8ICAzICsrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+PiBpbmRl
eCBhM2M4OTNmNzI5MDguLmJmOGExNzMzNmM3ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tZWRwLmMKPj4gQEAgLTQxLDkgKzQxLDE5IEBACj4+ICAgCj4+ICAgI2RlZmluZSBEUF9Q
SFlfVkNPX0RJViAgICAgICAgICAgICAgICAgICAgICAgICAgMHgwMDc0Cj4+ICAgI2RlZmluZSBE
UF9QSFlfVFgwX1RYMV9MQU5FX0NUTCAgICAgICAgICAgICAgICAgMHgwMDdjCj4+ICsvKiBOb3Jk
IHVzZXMgYSBkaWZmZXJlbnQgcmVnaXN0ZXIgbGF5b3V0OyBub24tTm9yZCB2YWx1ZSBpcyAweDAw
YTAgKi8KPj4gICAjZGVmaW5lIERQX1BIWV9UWDJfVFgzX0xBTkVfQ1RMICAgICAgICAgICAgICAg
ICAweDAwYTAKPj4gKyNkZWZpbmUgRFBfUEhZX1RYMl9UWDNfTEFORV9DVExfTk9SRCAgICAgICAg
ICAgIDB4MDBjMAo+PiAgIAo+PiArLyogTm9yZCB1c2VzIGEgZGlmZmVyZW50IHJlZ2lzdGVyIGxh
eW91dDsgbm9uLU5vcmQgdmFsdWUgaXMgMHgwMGUwICovCj4+ICAgI2RlZmluZSBEUF9QSFlfU1RB
VFVTICAgICAgICAgICAgICAgICAgICAgICAgICAgMHgwMGUwCj4+ICsjZGVmaW5lIERQX1BIWV9T
VEFUVVNfTk9SRCAgICAgICAgICAgICAgICAgICAgICAweDAxMTAKPj4gKyNkZWZpbmUgRFBfUEhZ
X0xET19DRkcgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDBmMAo+IFdoeSBkb2VzIGl0IG5v
dCBoYXZlIGEgX05PUkQgc3VmZml4PwoKQWNrLCBJIHdpbGwgYWRkwqAgX05PUkQgc3VmZml4IGlu
IHRoZSBuZXh0IHJldmlzaW9uLgoKVGhhbmtzCgo+Cj4+ICsKPj4gKy8qIE5vcmQtc3BlY2lmaWMg
VFggbGFuZSByZWdpc3RlcnMgKi8KPj4gKyNkZWZpbmUgRFBfUEhZX1RYX0xOMF9EUlZfTFZMX05P
UkQgICAgICAgICAgICAgMHgwMGU0Cj4+ICsjZGVmaW5lIERQX1BIWV9UWF9MTjFfRFJWX0xWTF9O
T1JEICAgICAgICAgICAgIDB4MDBlOAo+PiArI2RlZmluZSBUWG5fVFhfQkFORF9OT1JEICAgICAg
ICAgICAgICAgICAgICAgICAgMHgwMDI0Cj4+ICAgCj4+ICAgLyogTEFORV9UWG4gcmVnaXN0ZXJz
ICovCj4+ICAgI2RlZmluZSBUWG5fQ0xLQlVGX0VOQUJMRSAgICAgICAgICAgICAgICAgICAgICAg
MHgwMDAwCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cXNlcmRlcy1kcC1jb20tdjguaCBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1x
c2VyZGVzLWRwLWNvbS12OC5oCj4+IGluZGV4IDkzZWRhYmI4MzBhZi4uMDA4YjE3MjIyYThkIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy1k
cC1jb20tdjguaAo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNl
cmRlcy1kcC1jb20tdjguaAo+PiBAQCAtNDgsNSArNDgsOCBAQAo+PiAgICNkZWZpbmUgRFBfUVNF
UkRFU19WOF9DT01fQ0xLX0ZXRF9DT05GSUdfMQkJMHgyZjQKPj4gICAjZGVmaW5lIERQX1FTRVJE
RVNfVjhfQ09NX0NNTl9TVEFUVVMJCQkweDMxNAo+PiAgICNkZWZpbmUgRFBfUVNFUkRFU19WOF9D
T01fQ19SRUFEWV9TVEFUVVMJCTB4MzNjCj4+ICsjZGVmaW5lIERQX1FTRVJERVNfVjhfQ09NX1NW
U19NT0RFX0NMS19TRUxfTk9SRAkJMHgxN2MKPj4gKyNkZWZpbmUgRFBfUVNFUkRFU19WOF9DT01f
Q01OX1NUQVRVU19OT1JECQkweDFkMAo+PiArI2RlZmluZSBEUF9RU0VSREVTX1Y4X0NPTV9DX1JF
QURZX1NUQVRVU19OT1JECQkweDFmOAo+PiAgIAo+PiAgICNlbmRpZgo+Pgo+PiAtLSAKPj4gMi4z
NC4xCj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
