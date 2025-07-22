Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BFAC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 13:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olgvptv1AHNCCObhT3/YF9Kw/IDNhj/iSUKBCgTCdYI=; b=Mo7XJxW5wuiOtN
	S/uTm5xEw4JYLxWvPs8mQb7qxbL/fPTPvA/yEKBzlPMHroC8f3LZ/DUpvpnrLvm8HpyNvN/+sL5jB
	kY5MiiXNdgo6V/eDNX1Bpcih4Y4RXApBenc5UWaECgWf/IahmW/03xW818/UwOiT88txjD7/8zltB
	Gp4x30Mwykea3DNmqtp7fCKMuS2cQW0Vt+sfdK+EAlFzs7z47/T8WK2Ci0ZQXIehFaYbHE9GR1TVk
	SE+CpEI3eqLwR8zYq7GXKMw+Nkkewxh+bvEeTcNKUEAuKrsykOZRbJ3q8KgilVSRQMAsUo6uWp5i0
	KmcT5m4gMAWk7bu6Z0KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDPh-00000002bPX-17pg;
	Tue, 22 Jul 2025 13:52:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueCJH-00000002Smb-14it
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 12:41:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7eppt004723
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 12:41:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HPoaxvi/5bO/h7eZRr8RStad9S7OsZapYBjDAZ9z2vs=; b=hApQCgrivdspZnYY
	3OERPstgvrzphY/dKNp579DQ5dYZPAnwmJqrCMvSkEwl4W4eHhsTJaToolr8zHqk
	jDGQvPJUFULQ/6tu14rdMZi1Z03vW0C1DXIypjeTuB0greUXJTUznDHVh6bSu8dx
	9SbMC3P6C/CQUTGSwvg+sGeXYyDuDL/Wzgj4t6ekEG16aPS5QcaY/uQqhln5OMFg
	SctF1KaauPW328JGVJ5sjps8vfMfScEX5mN+UNpx9qySgJEkW5P5QMmJTaPCp8Gs
	Cy4AHFzviMAySdPyS4LnKrs03avf+8RfncCl/CFOOgAD8AUup1jysp1KO8BXeFB1
	F7eThg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048v7rcw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 12:41:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e33af599bcso857119585a.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 05:41:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753188089; x=1753792889;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HPoaxvi/5bO/h7eZRr8RStad9S7OsZapYBjDAZ9z2vs=;
        b=f0qXVvGTR6cvsXFEv/Gk/va7hoYCoRLTL/J53SqJVvlQvnHgLFCt9vByloxGIpBncI
         65HCGkLNOeoBGh4CA7Gtv1zglVrhaM4uDkFhjwH1WqvJlFOYmkyFiuiOQD/WnEOqztA8
         TFKAngCy+QMMwzmvg00gwYXuG2amyr9Y1GfkIZiAV5G3TrdAQbdMGqFxv3xBss1h+bq5
         zGJXI9uuzF94+VznirbF2qDR8/BdOtmEcvEJ+0IBiVl4ICPG/t1l+TzAbG+Mm6+OZq0r
         mBD816cIMjSf8kZR8WMvUAE0dDk+6jwAzv076xF5tpNyh0e90ZdvrdbnIltKX9bMqzi/
         GWWg==
X-Forwarded-Encrypted: i=1; AJvYcCXVOnFoOWDAsC10KQY/LOOjgN8oT6HBGXoC+iwRgED9EQwIOU69CAwcBzZQkQKsYxvkAyOjqUNQTYk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy83iBt/dnKa7qmhgP8mGX6q3GKT3qBfNMu58baW397gFSQisLU
	/p/RBYy1JISPfL9on5FP6aJzqacSiK90tuPzpORA04nIETKKLZxecs3lDqfWK1Icuy9caIfitLw
	nFUP+sEefF6yAhdYf5szJ9pEsJLbPVLg4IidmPEY1z2flnSj68tqe6luxZSUAsVP21DHm
X-Gm-Gg: ASbGncs9e3A13hOAGi+xSEtqWf6puySlievSse8u6ponubdO6v3gWKUdKJoyRr5mGei
	JMl5sbgqMRqI7+pmpWdnYDTu0SFKMrtuxmFv4HjGPUL17GoInalxntcjpx126jpuBJke8yVGkLo
	OfevGaeGBznDRlXOMvbNz//KqnvLHnpKDCebe1vBpVA3/w6ABOYcyCdB0cneoe54h+Ase50CPnE
	DWT5H/ieVf8t79BbrxH0ReZzVYKRHGanS+k24vDXVn629IyZR4QlhtoP7/Uag3tdnNd5+qvotaE
	UPbQekgTxrnJ+5SQIovHbAkHt2BPEpMge80GsGjnOm1xdTpkYi/Rr+63ngKGE1lWaDUtge5iTE0
	fLOe2vUf/rf3+yaOXLEyxQ3+QbprSZ8URIVmeY9Oh2BmY3Qz/hPkB
X-Received: by 2002:a05:620a:a111:b0:7e0:6aa7:386 with SMTP id af79cd13be357-7e34d8fc169mr2764101085a.19.1753188088845;
        Tue, 22 Jul 2025 05:41:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEA4wANK0XSCQTa2429llOZl1wgDzsnRsA6lFOrCo2WksXeOi8CYcvEop+soj69BYJ4tBRyrQ==
X-Received: by 2002:a05:620a:a111:b0:7e0:6aa7:386 with SMTP id af79cd13be357-7e34d8fc169mr2764096785a.19.1753188088259;
        Tue, 22 Jul 2025 05:41:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a35b5a7dfsm1746438e87.227.2025.07.22.05.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 05:41:27 -0700 (PDT)
Date: Tue, 22 Jul 2025 15:41:25 +0300
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
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
Message-ID: <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
X-Proofpoint-GUID: ZZsRAKl75iUucv3eVxfrIgjtFL4p0Lsj
X-Authority-Analysis: v=2.4 cv=SYL3duRu c=1 sm=1 tr=0 ts=687f86fa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8 a=O_WmNVlCytCE8eSXzh4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEwNCBTYWx0ZWRfX2NrdnjPHOeEU
 4HnlGwMwiMHTNpAtbc6IGlBjXTspvVGPzuGfVbyImNnrv5fzoBS4AoSrpKKHvxqjCJ2/m9i4jNi
 y3DdX0EcrsUuA1opEdl8yMRkoUJ2yeCARg1YDAbx15cMPqTg488I5Lsh4yo6f0Hewpmgr1E5AWk
 +WvzKXaJ7Q3s9rJJC+x4hKJ3CXOsll/IEX2qHdsaTMRvKGGd/c6OTOtKEQXFd+YyfEBP4OAbxPo
 foh6apazNXQO+f73hvrYjNcwUb6HrScGUPDJTG22vauztzSQyaeIn8iJGq7T5O4JZ5CKjUJWmFn
 uqVYJ55oqPt3fF8hL0e+MeiGeOFj6L7IdLE3cMogkjbGwLKD4CixVasXU81QObN5GVQ9ywhTWTh
 WkK8iUepeaRUTA5DiyyjWduZphIL5NpVTd/fJEeJznGWs/SOCDjxJoRRVHxIDb7qGrOgijxJ
X-Proofpoint-ORIG-GUID: ZZsRAKl75iUucv3eVxfrIgjtFL4p0Lsj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_054131_305535_A3E6861D 
X-CRM114-Status: GOOD (  47.51  )
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

T24gVHVlLCBKdWwgMjIsIDIwMjUgYXQgMDg6MDU6MDZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gNy8yMi8yMDI1IDQ6MzggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBUdWUsIEp1bCAyMiwgMjAyNSBhdCAwMzoyMjowM1BNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBJbnRyb2R1Y2UgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZv
ciB0aGUgUXVhbGNvbW0gUU1QIERQIFBIWQo+ID4+IG9uIFFDUzYxNSBTb0NzLiBUaGlzIFBIWSBz
dXBwb3J0cyBEaXNwbGF5UG9ydCBmdW5jdGlvbmFsaXR5IGFuZCBpcwo+ID4+IGRlc2lnbmVkIHRv
IG9wZXJhdGUgaW5kZXBlbmRlbnRseSBmcm9tIHRoZSBVU0IzIFBIWS4KPiA+Pgo+ID4+IFVubGlr
ZSBjb21ibyBQSFlzIGZvdW5kIG9uIG90aGVyIHBsYXRmb3JtcywgdGhlIFFDUzYxNSBEUCBQSFkg
aXMKPiA+PiBzdGFuZGFsb25lIGFuZCBkb2VzIG5vdCBzdXBwb3J0IFVTQi9EUCBtdWx0aXBsZXhp
bmcuIFRoZSBiaW5kaW5nCj4gPj4gZGVzY3JpYmVzIHRoZSByZXF1aXJlZCBjbG9ja3MsIHJlc2V0
cywgVENTUiBjb25maWd1cmF0aW9uLCBhbmQgY2xvY2svUEhZCj4gPj4gY2VsbHMgZm9yIHByb3Bl
ciBpbnRlZ3JhdGlvbi4KPiA+IFNpbXBseSBwdXQ6IG5vLCB0aGlzIGlzIG5vdCBjb3JyZWN0LiBF
dmVuIGlmIHlvdSBnbyB0byB0aGUgU002MTUwIGJsb2NrCj4gPiBkaWFncmFtLCBpdCBwb2ludHMg
b3V0IHRoYXQgRFAgdXNlcyB0aGUgVVNCMyBQSFksIG5vdCBhIHNlcGFyYXRlIERQIFBIWS4KPiA+
Cj4gPiBJIHRob3VnaHQgdGhhdCB3ZSBoYXZlIGRpc2N1c3NlZCBpdCBiZWZvcmVoYW5kLgo+ID4K
PiA+IEkgY2FuIHF1b3RlIG15IGNvbW1lbnQgZnJvbSB0aGUgcHJldmlvdXMgdGhyZWFkOgo+ID4K
PiA+Pj4gTm8uIEl0IG1lYW5zIHJlcGxhY2luZyBleHRlbmRpbmcgZXhpc3RpbmcgZW50cmllcyB3
aXRoIGJpZ2dlciByZWcgYW5kCj4gPj4+ICNwaHktY2VsbHMgPSA8MT4uIFRoZSBkcml2ZXIgbXVz
dCBrZWVwIHdvcmtpbmcgd2l0aCBvbGQgbm9kZSBkZWZpbml0aW9ucwo+ID4+PiBhcyBpcyB0byBl
bnN1cmUgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkuIE5ldyBub2RlcyBzaG91bGQgbWFrZSBpdAo+
ID4+PiByZWdpc3RlciB0d28gUEhZcyAoVVNCMyBhbmQgRFApLiBPbiB0aGUgZHJpdmVyIHNpZGUg
bW9kaWZ5IGdlbmVyaWMgY29kZQo+ID4+PiBwYXRocywgYWxsIHBsYXRmb3JtcyBzdXBwb3J0ZWQg
YnkgdGhlIGRyaXZlciBzaG91bGQgYmUgYWJsZSB0byBzdXBwb3J0Cj4gPj4+IFVTQjMrRFAgY29t
YmluYXRpb24uCj4gPiBMb29raW5nIGF0IHRoZSBoYXJkd2FyZSBtZW1vcnkgbWFwczoKPiA+Cj4g
PiBNU004OTk4OiBVU0IzIFBIWSByZWdzIGF0IDB4YzAxMDAwMCwgRFAgUEhZIHJlZ3MgYXQgMHhj
MDExMDAwCj4gPiBTRE02NjA6IFVTQjMgUEhZIHJlZ3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVn
cyBhdCAweGMwMTEwMDAKPiA+IFFDTTIyOTA6IFVTQjMgUEhZIHJlZ3MgYXQgMHgxNjE1MDAwLCBE
UCBQSFkgcmVncyBhdCAweDE2MTYwMDAKPiA+IFNNNjExNTogVVNCMyBQSFkgcmVncyBhdCAweDE2
MTUwMDAsIERQIFBIWSByZWdzIGF0IDB4MTYxNjAwMAo+ID4KPiA+IE5vdzoKPiA+IFNNNjE1MDog
VVNCMyBQSFkgcmVncyBhdCAweDg4ZTYwMDAKPiA+ICAgICAgICAgVVNCMyBQSFkgcmVncyBhdCAw
eDg4ZTgwMDAsIERQIFBIWSByZWdzIGF0IDB4ODhlOTAwMAo+ID4KPiA+IEkgZG8gbm90IGtub3cs
IHdoeSBtc20tNC4xNCBkaWRuJ3QgZGVzY3JpYmUgc2Vjb25kIFVTQjMgUEhZLiBNYXliZSB5b3UK
PiA+IGNhbiBjb21tZW50IG9uIGl0Lgo+ID4KPiA+IEJ1dCBiYXNlZCBvbiB0aGF0IGxpc3QsIHRo
ZSBvbmx5IHNwZWNpYWwgY2FzZSB0aGF0IHdlIG5lZWQgdG8gaGFuZGxlIGlzCj4gPiB0aGUgZmly
c3QgVVNCMyBQSFksIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhIGNvcnJlc3BvbmRpbmcgRFAgUEhZIGJs
b2NrLiBCdXQKPiA+IGl0IHdpbGwgYmUgaGFuZGxlZCBhbnl3YXkgYnkgdGhlIGNvZGUgdGhhdCBp
bXBsZW1lbnRzIHN1cHBvcnQgZm9yIHRoZQo+ID4gZXhpc3RpbmcgRFQgZW50cmllcy4gQWxsIG90
aGVyIGhhcmR3YXJlIGJsb2NrcyBhcmUgY29tYm8gVVNCK0RQIFBIWXMuCj4gPgo+ID4gSGF2aW5n
IGFsbCBvZiB0aGF0IGluIG1pbmQsIHBsZWFzZSwgZm9yIHYzIHBhdGNoc2V0IGltcGxlbWVudCBV
U0IrRFAKPiA+IHN1cHBvcnQgaW4gdGhlIHBoeS1xY29tLXFtcC11c2JjIGRyaXZlciBhbmQgYWRk
IHRoZSBmb2xsb3dpbmcgbG9naWMKPiA+IHRoYXQgYWxzbyB3YXMgcmVxdWVzdGVkIGluIHYxIHJl
dmlldzoKPiA+Cj4gPj4+IE5vdCBxdWl0ZS4gQm90aCBVU0IzIGFuZCBEUCBkcml2ZXJzIHNob3Vs
ZCBiZSBjYWxsaW5nIHBvd2VyX29uIC8gX29mZi4KPiA+Pj4gSWYgVVNCMyBpcyBvbiwgcG93ZXJp
bmcgb24gRFAgUEhZIHNob3VsZCBmYWlsLiBWaWNlIHZlcnNhLCBpZiBEUCBpcyBvbiwKPiA+Pj4g
cG93ZXJpbmcgb24gVVNCIHNob3VsZCBmYWlsLgo+ID4gSSB0aGluayBvdXIgdW5kZXJzdGFuZGlu
ZyBtaWdodCBub3QgYmUgZnVsbHkgYWxpZ25lZC4gCgpJIGRpZCBub3Qgd3JpdGUgdGhpcy4gUGxl
YXNlIGZpeCB5b3VyIG1haWxlciB0byBxdW90ZSBtZXNzYWdlcyBwcm9wZXJseS4KQXMgeW91IGFy
ZSB1c2luZyBUaHVuZGVyYmlyZCwgSSdtIG5vdCBzdXJlIHdoZXJlIHRoZSBpc3N1ZSBjb21lcyBm
cm9tLgoKQWxzbyBwbGVhc2UgZml4IGl0IHRvIHdyYXAgeW91ciByZXNwb25zZXMgc29td2hlcmUg
bG9naWNhbGx5LgoKPiA+IFBlcmhhcHMgdGhpcyBpcyBiZWNhdXNlIEkgZGlkbuKAmXQgYWNjdXJh
dGVseSB1cGRhdGUgdGhlIG11dHVhbCBleGNsdXNpb24gcmVsYXRpb25zaGlwcyBhbmQgdGVzdCBy
ZXN1bHRzIGZvciB0aGUgZGlmZmVyZW50IFBIWXMuIAo+ID4gTGV0IG1lIGNsYXJpZnkgbXkgbGF0
ZXN0IGZpbmRpbmdzIGFuZCBleHBsYWluIHdoeSBJIGJlbGlldmUgdGhlc2UgYXJlIHNlcGFyYXRl
IFBIWXMgdGhhdCByZXF1aXJlIG11dHVhbCBleGNsdXNpb24gdmlhIFRDU1IuCj4gPgo+ID4gMS4g
QWJvdXQgdGhlIFRDU1IgRFBfUEhZTU9ERSBSZWdpc3RlcnMKPiA+Cj4gPiBNU004OTk4L1NETTY2
MDoKPiA+IAlPbmx5IG9uZSBUQ1NSX1VTQjNfRFBfUEhZTU9ERSByZWdpc3RlciBhdCAweDFGQ0Iy
NDguCj4gPiBRQ00yMjkwL1NNNjExNToKPiA+IAlUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFIGF0IDB4
M0NCMjQ4Cj4gPiAJVENTUl9VU0IzXzFfRFBfUEhZTU9ERSBhdCAweDNDQjI0Qwo+ID4gU002MTUw
Ogo+ID4gCVRDU1JfVVNCM18wX0RQX1BIWU1PREUgYXQgMHgxRkNCMjQ4Cj4gPiAJVENTUl9VU0Iz
XzFfRFBfUEhZTU9ERSBhdCAweDFGQ0IyNEMKClNNNjE1MCBoYXMgdHdvIGRpZmZlcmVudCBzZXRz
IG9mIG91dHB1dCBwaW5zLCBzbyB0aGUgZmlyc3QgcmVnaXN0ZXIKY292ZXJzIGZpcnN0IHNldCBv
ZiBTUyBsYW5lcyAod2hpY2ggYXJlIHJvdXRlZCB0byB0aGUgZG9jdW1lbnRlZCBTUwpQSFkpLCB0
aGUgc2Vjb25kIHJlZ2lzdGVyIGNvdmVycyB0aGUgc2Vjb25kIHNldCBvZiBTUyBsYW5lcyAod2hp
Y2ggYXJlCnJvdXRlZCB0byB0aGUgRFAgYW5kIHNlY29uZGFyeSBVU0IgUEhZKS4KCkkgY2FuIG9u
bHkgYXNzdW1lIHRoYXQgdGhlIHNhbWUgY29uZmlndXJhdGlvbiB3YXMgc3VwcG9zZWQgdG8gYmUK
YXBwbGljYWJsZSB0byBRQ00yMjkwIC8gU002MTE1LCBidXQgd2FzIGxhdGVyIHJlbW92ZWQgLyBk
aXNhYmxlZCwgd2hpbGUKdGhlIHJlZ2lzdGVycyB3ZXJlIGtlcHQgaW4gdGhlIFRDU1IgYmxvY2su
Cgo+ID4gRXZlbiB0aG91Z2ggTVNNODk5OCwgU0RNNjYwLCBRQ00yMjkwLCBhbmQgU002MTE1IGFs
bCBoYXZlIG9uZSBVU0IzIFBIWSBhbmQgb25lIERQIFBIWSwgdGhlIFRDU1IgRFBfUEhZTU9ERSBy
ZWdpc3RlciBjb25maWd1cmF0aW9uIGlzIGRpZmZlcmVudCBvbiBlYWNoIHBsYXRmb3JtLgo+ID4K
PiA+IEFkZGl0aW9uYWxseSwgSSBmb3VuZCBzb21lIGludGVyZXN0aW5nIHJlZ2lzdGVyIGRvY3Vt
ZW50YXRpb24gZm9yIFFDTTIyOTAvU002MTE1Ogo+ID4gCVRDU1JfVVNCM18wX0RQX1BIWU1PREU6
IOKAnEluIGthbW9ydGEgdGhpcyBvbmUgaXMgZm9yIG1vYmlsZSB1c2IuIERQIG5vdCBzdXBwb3J0
ZWQu4oCdCj4gPiAJVENTUl9VU0IzXzFfRFBfUEhZTU9ERTog4oCcRFAgbW9kZSBzdXBwb3J0ZWQg
Zm9yIEF1dG8gdXNiIGluIGthbW9ydGEu4oCdCj4gPiBJIHRoaW5rIHRoZSByZWFzb24gZm9yIGhh
dmluZyB0d28gZGlmZmVyZW50IFRDU1IgcmVnaXN0ZXJzIGlzIHRvIGFsbG93IGJvdGggdGhlIFVT
QjMuMCBhbmQgRFAgUEhZcyB0byBiZSB1c2VkcyBhdCB0aGUgc2FtZSB0aW1lIGluIGNlcnRhaW4g
cHJvZHVjdCBjb25maWd1cmF0aW9ucy4KClN1cmUuIE9uZSBmb3IgdGhlIGZpcnN0IFBIWSAoVVNC
KSwgb25lIGZvciB0aGUgc2Vjb25kIFBIWSAoVVNCK0RQKS4KSWYgeW91IGNoZWNrIHRoZSBtZW1v
cnkgbWFwLCB5b3Ugd2lsbCBmaW5kIHRoZSBzZWNvbmQgVkxTIENMQU1QIHJlZ2lzdGVyCmZvciB0
aGUgc2Vjb25kIFVTQiBQSFkuCgo+ID4KPiA+IDIuIFNNNjE1MCBUZXN0IFJlc3VsdHMKPiA+IFdo
ZW4gVENTUl9EUF9QSFlNT0RFXzAgaXMgc3dpdGNoZWQgdG8gRFAsIHRoZSBVU0IzIHByaW1hcnkg
UEhZIGNhbm5vdCB3b3JrLCBhbmQgdGhlIERQIFBIWSBpcyBhbHNvIG5vdCBmdW5jdGlvbmFsIChw
b3NzaWJseSBkdWUgdG8gY2xvY2sgbGFjayBvciBvdGhlciBjb25maWd1cmF0aW9uIG1pc21hdGNo
IHdpdGggdGhpcyBUQ1NSIHNldHRpbmcpLgo+ID4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMSBpcyBz
d2l0Y2hlZCB0byBEUCwgYm90aCB0aGUgVVNCMyBwcmltYXJ5IFBIWSBhbmQgdGhlIERQIFBIWSB3
b3JrIG5vcm1hbGx5Lgo+ID4gSSB0aGluayAid2h5IG1zbS00LjE0IGRpZG4ndCBkZXNjcmliZSBz
ZWNvbmQgVVNCMyBQSFkiLCBiZWNhdXNlIFRDU1JfRFBfUEhZTU9ERV8xIGFsd2F5cyB3b3JrcyBp
biBEUCBtb2RlLgo+ID4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21z
bS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUv
ZHJtL21zbS9kcC9kcF9jYXRhbG9nX3YyMDAuYwoKSGVyZSBpdCBzdGlsbCBwcm9ncmFtcyB0aGUg
VENTUiByZWdpc3Rlci4KCj4gPgo+ID4gQmFzZWQgb24gdGhlc2UgaW5mbywgSSBiZWxpZXZlIHRo
ZXNlIGFyZSBzZXBhcmF0ZSBQSFlzLCBhbmQgb25seSB0aGUKPiA+IFRDU1IgRFBfUEhZTU9ERSBy
ZWdpc3RlcnMgZGV0ZXJtaW5lIHdoaWNoIFVTQjMvRFAgUEhZcyBhcmUgcGFpcmVkIG9yCj4gPiBt
dXR1YWxseSBleGNsdXNpdmUuIFRoaXMgaXMgd2h5IEkgaGF2ZSBtYWludGFpbmVkIHNlcGFyYXRl
IHByaXZhdGUKPiA+IGRhdGEgZm9yIGVhY2ggUEhZIGFuZCBpbXBsZW1lbnRlZCBQb3dlciBvbiBt
dXRleCBjb250cm9sIHZpYSBUQ1NSLAo+ID4gcmF0aGVyIHRoYW4gdXNpbmcgYSBxbXBfY29tYm8t
bGlrZSBzdHJ1Y3R1cmUuCgpTdGlsbCwgbm8uIENoZWNrIHRoZSBibG9jayBkaWFncmFtIG9mIFNN
NjE1MC4KCj4gPgo+ID4gR2l2ZW4gdGhlIGFib3ZlLCBkbyB5b3UgdGhpbmsgd2Ugc3RpbGwgbmVl
ZCB0byBmb3JjZSBVU0IgYW5kIERQIHRvIGJlIHN0cmljdGx5IGJvdW5kIHRvZ2V0aGVyIGxpa2Ug
YSBjb21ibyBQSFk/CgpZZXMuCgo+ID4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8
eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+PiAtLS0KPiA+PiAgLi4uL2JpbmRpbmdz
L3BoeS9xY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgICAgICAgfCAxMTEgKysrKysrKysrKysr
KysrKysrKysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMTEgaW5zZXJ0aW9ucygrKQo+ID4+Cgot
LSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
