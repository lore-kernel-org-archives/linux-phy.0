Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46361CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 23:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td59Gqfow3iiHJs146GLIW77dk2v/lhPCT5dnGEeocM=; b=Jxt8Tn14iyvh5D
	3cBp++jNIfFRthbIfv2b9l7G3wuTg5R+IRZ6tmfMU0gLkcsDLQ6rXUP4K9FVZ7En3ydahXTJuXlA0
	zLfa9fGC5ilkz6/mMCJ19L+tPmim4HJ9pim6+bH9ETNjwG7ONCQh0/fTiolN9IaQaiv8RCIjaSQYd
	neL0s6gT1Oo70n0FIQoBASG5rRC9j71z8AWKMEoVa/cGygZsfHO9NUSAaUf8Ib4Kjo+gIPTA9FQDi
	gHHFHG6Hkss70u06DPHAlm7W/av+Qf8fYGorLPyX+iFwlh6NjwROOxMi1//tzOXS7qeYArlXToKvu
	IT+m8lOE95Z2s+StLzeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0q8U-0000000BoIw-0C4i;
	Mon, 22 Sep 2025 23:39:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0q8S-0000000BoHr-0I5P
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 23:39:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHcrlU031917
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nyhMdld3iRwlOfrrEDiEApYehLCv9Ntzp5VmwS0Yvcc=; b=D3W6ofxAWgqgKf9U
	ektTvLlg9+CI08ZNS9v2rTbGb4dWAJZr4z5TO6J+XBcpEFCJyZU09pZ7SPaqpNtj
	Oq/wybhLS+QOt2Zly/SnQpdbDVtdvDtXGiyWuh5cN9/OT8qx3H6h++ZllUAIaKy8
	i6ND3+wi0UMs9UxFX1uDEZ9oknTZWREMtrm3T5KAyZeWHT+qRbqA3SrB1ChAoII5
	Ikt16RUh1dsBoIRh4NY1DSzbzs6FfCFeqrCHf9tzMevSzA4fyDA/f0eZHhZwKpXR
	ECE1TgkJxCqtDZAqeF6sRHfAnqwGi0n9H6KRQcgGqDPwBMiwoMsgleo44NNYJ6D0
	XGGRcw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyeps58-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:39:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78e5b6f1296so97361936d6.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 16:39:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758584394; x=1759189194;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nyhMdld3iRwlOfrrEDiEApYehLCv9Ntzp5VmwS0Yvcc=;
        b=JStbW4Rgfab9sMIuB4UhnAnFWCjQRZPcBepUgLSPnqFjUSd8ZsASrgEnTvfC1v1YxV
         8rbWi78T45JVqw3uqH/EM+AteWXst1Vd3Z57FHKHUzIWAZxOTS703YObw1GIMe5B07/+
         uy2IYMo2KDoIGuiibmSor4pmp75Kz1ASwDaYveOS+XGkl3Ae3FKQrZwWNZ+b1M2yccza
         IAm0fy2HncRBiCsJf6pILXHo3M44nFq1Sl+fPuybNb1P4Sj0TV5EhcpgAzj8AIB1aqBd
         miIWO+0r3nWiLRwBumWXrbgg31PVTL1+RiDyOL/iO1p/YnzYFshQQ6aZxGJa3SRwHhpp
         gOHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIY7V+oqgkJ0xk6k+q3i+mbvuo6yYy9rp5zjjqMaW05hn9azlOLI40VXjNuuiU6CfBjV9jOC9SjcE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzefZeYQvpvIakhaVjhF7lQ1UWJj0QgCFQmxOVI/e7UK1RMCHJN
	N8UiYPvlAfR2NVtlmx/4fczz0c18K1JhHQVtffzB4tapIPqgfWnlUEbJMZi6uY2kYN6L5ALTinn
	4BtPVWRpoSCgzdrt6Etvb5kkavBBSOGRw7MuHQlpIxiZRUvUKGdOmBsq4G+CR74I9+eq+
X-Gm-Gg: ASbGncvjraYjy58rUVbww1TLosrGAavWdNnzpFEVdCqDo3vOi5PcKOoeR9fcHjYMU43
	HB+rVDPI03q5wC5njTOsJKD468OTaiTp43z1lRRJdr0xdPL6sDumlqj1+HBdEvSNzIzECWz4AAL
	hiEPALYxWuJWl7JhclprP/P/yCwxMddggfrX/O51iwhYW144rEjdh/SyvA02pX4U+g0A9HamN84
	RmKJD8kivz8DO5WTUBW5U6spY0iIfk40Ur5JI9oPtAeQOOn9BNOrTGRU3UP0Sp9RO4H+N+4Kf3B
	4tLTMaLRUUtq1sDKvm5HmG7BMSQf2hKQZg29Zkz6p2oKRQyo2S9pTP9t0HmrL8Wtc5pU26qqW5y
	rPeRlATsxcUURsikGBizINwBaZqQZL2Sl6MBeDUxE/cRxTJd5k/Ai
X-Received: by 2002:a05:6214:d62:b0:783:aeed:f591 with SMTP id 6a1803df08f44-7e6ff32ee4fmr9470256d6.11.1758584394110;
        Mon, 22 Sep 2025 16:39:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjwGj4dPuDuQgAOpaSc71GX0OUwUXDROsU0ay7TcyRk+yHVyKF7m4w7U22p4wZjnkRg5+6gg==
X-Received: by 2002:a05:6214:d62:b0:783:aeed:f591 with SMTP id 6a1803df08f44-7e6ff32ee4fmr9469836d6.11.1758584393538;
        Mon, 22 Sep 2025 16:39:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57c5687103fsm1861749e87.52.2025.09.22.16.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 16:39:52 -0700 (PDT)
Date: Tue, 23 Sep 2025 02:39:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <rob.clark@oss.qualcomm.com>
Cc: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <t4x7okzjvh5ltyoniwlreoyy76735igtnxpeohpbojn4hkqk4q@v3ayfjrkez3e>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
 <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
 <CACSVV00Bat6LE=joM+Wh3HnC1=c3_Y=crxUGdhLQWxxpZ17Q3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACSVV00Bat6LE=joM+Wh3HnC1=c3_Y=crxUGdhLQWxxpZ17Q3g@mail.gmail.com>
X-Proofpoint-GUID: RujY5jwCKaOFmHbkRr79-gu1bSRdOXmK
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d1de4b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=yZMGBzM-AMQHzKZg3z0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX9VW6k7m0vVcM
 JB2aQw6+m4SrWdl0thVtllkCS0o8ZGtMlPphltBPP+HH2wxSn+HAoaMQOHqFoZU5r1PhvA7yZlX
 WJ7/zYKWE3WkCE3RrF3L8esVAqZw/z7je8rWhtfq8fofqe4lEu2G+1GM7sKFyHSVESEt91+/mYP
 ij9wTfiONvfd+ZAneiyO+6Gx/FqNez4WcLTKv0GXBg5fcRv+SHE423T5J4BN+8wzfSW8fTNVBNx
 KVQs2tmR/CmhNIetlp4bgn8z/53itKKKb/IJ7+DPbmnbag2ORfyYsz12pmzhmdBy29yfM+5OnQ5
 2odY/O0NfoZ1HmJQMAvfmsGA10BRsGD41FTU5AgK1CvZtwajnQ7QFDwMEX1RvHLKFYWTUE8KGdT
 w/BBpZve
X-Proofpoint-ORIG-GUID: RujY5jwCKaOFmHbkRr79-gu1bSRdOXmK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_163956_113478_F3C9EAA6 
X-CRM114-Status: GOOD (  30.06  )
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

T24gTW9uLCBTZXAgMjIsIDIwMjUgYXQgMDg6MTM6MDBBTSAtMDcwMCwgUm9iIENsYXJrIHdyb3Rl
Ogo+IE9uIEZyaSwgU2VwIDE5LCAyMDI1IGF0IDExOjM14oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo+
IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIEZy
aSwgU2VwIDE5LCAyMDI1IGF0IDEwOjI0OjMxUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+
ID4gPiBRQ1M2MTUgcGxhdGZvcm0gcmVxdWlyZXMgbm9uLWRlZmF1bHQgbG9naWNhbC10by1waHlz
aWNhbCBsYW5lIG1hcHBpbmcgZHVlCj4gPiA+IHRvIGl0cyB1bmlxdWUgaGFyZHdhcmUgcm91dGlu
Zy4gVW5saWtlIHRoZSBzdGFuZGFyZCBtYXBwaW5nIHNlcXVlbmNlCj4gPiA+IDwwIDEgMiAzPiwg
UUNTNjE1IHVzZXMgPDMgMiAwIDE+LCB3aGljaCBuZWNlc3NpdGF0ZXMgZXhwbGljaXQKPiA+ID4g
Y29uZmlndXJhdGlvbiB2aWEgdGhlIGRhdGEtbGFuZXMgcHJvcGVydHkgaW4gdGhlIGRldmljZSB0
cmVlLiBUaGlzIGVuc3VyZXMKPiA+ID4gY29ycmVjdCBzaWduYWwgcm91dGluZyBiZXR3ZWVuIHRo
ZSBEUCBjb250cm9sbGVyIGFuZCBQSFkuCj4gPiA+Cj4gPiA+IEZvciBwYXJ0aWFsIGRlZmluaXRp
b25zLCBmaWxsIHJlbWFpbmluZyBsYW5lcyB3aXRoIHVudXNlZCBwaHlzaWNhbCBsYW5lcwo+ID4g
PiBpbiBhc2NlbmRpbmcgb3JkZXIuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUg
WWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZl
cnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5jIHwgMTAgKysrLS0tLQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9saW5rLmMgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuaCB8ICAx
ICsKPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGlu
ay5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5rLmMKPiA+ID4gaW5kZXggMmFlYjNl
Y2Y3NmZhYjJlZTZhOTUxMmI3ODVjYTVkY2VlYmZjMzk2NC4uMzRhOTFlMTk0YTEyNGVmNTM3MmYx
MzM1MmY3YjM1MTNhYTg4ZGEyYSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9saW5rLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5r
LmMKPiA+ID4gQEAgLTEyMzYsNiArMTIzNiw2MSBAQCBzdGF0aWMgdTMyIG1zbV9kcF9saW5rX2xp
bmtfZnJlcXVlbmNpZXMoc3RydWN0IGRldmljZV9ub2RlICpvZl9ub2RlKQo+ID4gPiAgICAgICBy
ZXR1cm4gZnJlcXVlbmN5Owo+ID4gPiAgfQo+ID4gPgo+ID4gPiArLyoKPiA+ID4gKyAqIEFsd2F5
cyBwb3B1bGF0ZSBtc21fZHBfbGluay0+bGFuZV9tYXAgd2l0aCA0IGxhbmVzLgo+ID4gPiArICog
LSBVc2UgRFRTICJkYXRhLWxhbmVzIiBpZiBwcmVzZW50OyBvdGhlcndpc2UgZmFsbCBiYWNrIHRv
IGRlZmF1bHQgbWFwcGluZy4KPiA+ID4gKyAqIC0gRm9yIHBhcnRpYWwgZGVmaW5pdGlvbnMsIGZp
bGwgcmVtYWluaW5nIGVudHJpZXMgd2l0aCB1bnVzZWQgbGFuZXMgaW4KPiA+ID4gKyAqICAgYXNj
ZW5kaW5nIG9yZGVyLgo+ID4gPiArICovCj4gPiA+ICtzdGF0aWMgaW50IG1zbV9kcF9saW5rX2xh
bmVfbWFwKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IG1zbV9kcF9saW5rICptc21fZHBfbGlu
aykKPiA+ID4gK3sKPiA+ID4gKyAgICAgc3RydWN0IGRldmljZV9ub2RlICpvZl9ub2RlID0gZGV2
LT5vZl9ub2RlOwo+ID4gPiArICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKmVuZHBvaW50Owo+ID4g
PiArICAgICBpbnQgY250ID0gbXNtX2RwX2xpbmstPm1heF9kcF9sYW5lczsKPiA+ID4gKyAgICAg
dTMyIHRtcFtEUF9NQVhfTlVNX0RQX0xBTkVTXTsKPiA+ID4gKyAgICAgdTMyIG1hcFtEUF9NQVhf
TlVNX0RQX0xBTkVTXSA9IHswLCAxLCAyLCAzfTsgLyogZGVmYXVsdCAxOjEgbWFwcGluZyAqLwo+
ID4gPiArICAgICBib29sIHVzZWRbRFBfTUFYX05VTV9EUF9MQU5FU10gPSB7ZmFsc2V9Owo+ID4g
PiArICAgICBpbnQgaSwgaiA9IDAsIHJldCA9IC1FSU5WQUw7Cj4gPiA+ICsKPiA+ID4gKyAgICAg
ZW5kcG9pbnQgPSBvZl9ncmFwaF9nZXRfZW5kcG9pbnRfYnlfcmVncyhvZl9ub2RlLCAxLCAtMSk7
Cj4gPiA+ICsgICAgIGlmIChlbmRwb2ludCkgewo+ID4gPiArICAgICAgICAgICAgIHJldCA9IG9m
X3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KGVuZHBvaW50LCAiZGF0YS1sYW5lcyIsIHRtcCwgY250
KTsKPiA+ID4gKyAgICAgICAgICAgICBpZiAocmV0KQo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgZGV2X2RiZyhkZXYsICJlbmRwb2ludCBkYXRhLWxhbmVzIHJlYWQgZmFpbGVkIChyZXQ9JWQp
XG4iLCByZXQpOwo+ID4gPiArICAgICB9Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKHJldCkgewo+
ID4gPiArICAgICAgICAgICAgIHJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KG9mX25v
ZGUsICJkYXRhLWxhbmVzIiwgdG1wLCBjbnQpOwo+ID4gPiArICAgICAgICAgICAgIGlmIChyZXQp
IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9pbmZvKGRldiwgImRhdGEtbGFuZXMg
bm90IGRlZmluZWQsIHNldCB0byBkZWZhdWx0XG4iKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gb3V0Owo+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gKyAgICAgfQo+ID4gPiAr
Cj4gPiA+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBjbnQ7IGkrKykgewo+ID4gPiArICAgICAgICAg
ICAgIGlmICh0bXBbaV0gPj0gRFBfTUFYX05VTV9EUF9MQU5FUykgewo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgZGV2X2VycihkZXYsICJkYXRhLWxhbmVzWyVkXT0ldSBvdXQgb2YgcmFuZ2Vc
biIsIGksIHRtcFtpXSk7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ICsgICAgICAgICAgICAgdXNlZFt0bXBbaV1d
ID0gdHJ1ZTsKPiA+ID4gKyAgICAgICAgICAgICBtYXBbaV0gPSB0bXBbaV07Cj4gPiA+ICsgICAg
IH0KPiA+ID4gKwo+ID4gPiArICAgICAvKiBGaWxsIHRoZSByZW1haW5pbmcgZW50cmllcyB3aXRo
IHVudXNlZCBwaHlzaWNhbCBsYW5lcyAoYXNjZW5kaW5nKSAqLwo+ID4gPiArICAgICBmb3IgKGkg
PSBjbnQ7IGkgPCBEUF9NQVhfTlVNX0RQX0xBTkVTICYmIGogPCBEUF9NQVhfTlVNX0RQX0xBTkVT
OyBqKyspIHsKPiA+Cj4gPiBOaXQ6IGkgPSBjbnQsIGogPSAwOyBEb24ndCBpbml0IGxvb3AgdmFy
aWFibGVzIGF0IHRoZSB0b3Agb2YgdGhlCj4gPiBmdW5jdGlvbi4KPiAKPiBUaGVzZSBkYXlzIHdl
IGNhbiBwYXJ0eSBsaWtlIGl0J3MgYzk5IGFuZCBkZWNsYXJlIGxvb3AgdmFyaWFibGVzCj4gaW5z
aWRlIHRoZSBmb3IoKSwgaW5zdGVhZCBvZiBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbi4gIE15
Cj4gcHJlZmVyZW5jZSBpcyB0byBkbyBzbywgdW5sZXNzIHRoZSBsb29wIHZhcmlhYmxlIGlzIHVz
ZWQgYWZ0ZXIgdGhlCj4gbG9vcC4KCkFjaywgd29ya3MgZm9yIG1lIHRvby4gSSB0aGluayBJJ20g
bm90IHVzZWQgZm9yIGhhdmluZyB0aGVlc2UgcGFydHMgb2YKQzk5IGFsbG93ZWQgaW4gdGhlIGtl
cm5lbC4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
