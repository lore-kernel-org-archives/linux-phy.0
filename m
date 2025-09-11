Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE91CAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBybDEPtECo/Hz7yIaGjCA9IkOnmlNbwc2G63Xn026Y=; b=Nz1RIpQ6utV6d1
	GQOztfALdTzCWFTGgeVsJUeOjQm3mMJwavrofGHz+GW3p0eY/GKN7sSWN7QiH0KC7vhgIud5y1fkN
	q8Y9g+hs+CHLJFwl2snawkjP5pfNEE5JAxdYZB08kv0HTgEQ2ol9BmSjscl402OP0yzK3be+Wbi96
	E+OqI4c3JQedQRUZ/rbGB193C7rGXIXvb58Cm4HtyHbXrQA7Qy3aD8INO+Gb5qqtCWikqXhu0N4h+
	HyREABs8ZFPjbLAJrPR4F/YT+UgYmqRPK/iq0toMjwgMszqQSUEVH/SKyB7klrT9ckw8ZVCvDb59x
	sGPHgqLKB4MZ2LEIvTzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwief-00000003gRn-2HL4;
	Thu, 11 Sep 2025 14:52:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwied-00000003gR9-15Qe
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:52:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BB0PAu027351
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:52:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WojJDvsX9kdVKAnNSnxIU1th8+eZ8pVWigC6PBhk65c=; b=X1srIZVfXz6frseC
	6UVh+E42QctEW94Jng3VYLFtPsGhJRQxZ1/kA5u7hea2LzIlpzCxsdkFGSKCkIiJ
	y0NnJuSwT8mize+yh3H1ofS7h6d6GEzgCEaJLsGUcMLuL1XsoL8jqL6y95WEjrlt
	2/v//VyQKQzTha71IUGgaqZOO/YJjsXBA2lNdT+/OAAmDK60OkqYjWz3yVapU/x9
	Ov9Xmp4RH+xrjoLwYITHfp34X2rRBQMZxL+dSDT22TI434vHkksmBkOrm/eNwLD6
	AI1ToTY1zy63cW5AI+dH5KAILpeOj7B0HJ6NK5kx+hTcwREQmiy+p1f7Lo8QJC6x
	NeRLwg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h34m0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:52:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25bcad10907so1970125ad.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602326; x=1758207126;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WojJDvsX9kdVKAnNSnxIU1th8+eZ8pVWigC6PBhk65c=;
        b=Er/3FthSo1QrFMCyv8XZxpvvrkX68FvSE5fytxurqWWtUf4+Y5RzXy6hHGRg00kvOi
         5r9HwLgFdZ9zgT/jvWkWThJBfwSVctEY9xfi0I3hBVHUUqKAxhpyteDI7F7KzSigvpg5
         OWYi0G0ekCDaVKvyzIuZKwqerRKgJWvMtYwLJna1sX/+3qFapXYjRu30MGt/wIsI9+8u
         dtSHluvL7o0cNK8JwYfoXkkhhAcW5SPAjuVsEUCsp7b4kBGXlPTDkuLPpYioSChD8VLK
         TZVSirv8qb18yLVtV7cHYWy3Fz26g7NV6ShJAINz9TP1GjTSbLQx+5XVe5VEQ/cKZdrq
         F2Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUTamnI23ZqzU43J5QBN9wqmwpoIgnBuYWmGlkbVQe8Pkf9jkTMrQB+QaSAgQhAm8KgCSiNxk+X4mE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxiqi4MNfmItOvCNh2lx/c74AtyNVH55afdkSZLG34wTjnxhvWF
	uZvnSPs1e/2mtZjAaJfdZ9WtmRxX/wvkVi+3X0iSaJERffwZ/pNq23o8JuDYEcCBySh9n1xb23/
	baxlpfj2eFPxC/go+WUaEvKrgm3NBPzJZf0ekoOPPAUF6Yn0YVGVcICqdvHazbaMFCveE
X-Gm-Gg: ASbGncuZjEO6R3qBgWOwVRvOoHs9n+mCmKnoq6JEb+9We1aj6rIo0wTGgiqir/ix02F
	IGKvMn0KM5Kwfj44KzB1HmgeWX/iGkXoXLJJfZOpT5p1y5QAZKq9NBER0iF0eXLgk8gKvR3FsFZ
	XbM8RlUsTF+PIluHXxpSIJ+zIWjqI41izoZ5e7w/HJE9XdnbvMvtnkGiciVfJ7ecE3gPnq0vckH
	pXWunBSFSC8ErJuweGmX+MdwAI3PI6xdJ93fVDR+rwkr3ZBN2qpB6taoHNidd6cviOzuKVop5RI
	Zfyuxw/6QBPYssKWqI/znuwrScdMed6DLWhuL6B8kjKa/qReuaq9idEV2kj5McPFH6mpPoi5aO8
	FEAQ+udKF+F/X5/CMfRHZgWsplnQqkw==
X-Received: by 2002:a17:902:ce83:b0:24c:b36d:637 with SMTP id d9443c01a7336-2516ed66eb6mr141725595ad.1.1757602325799;
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT+PRAiEdvkLjcRfWqdV9jt0LLP+pDcy5hdt4QkW8ZMuAA0nniD4jnVIYnBcIAtmyR2ZAHuQ==
X-Received: by 2002:a17:902:ce83:b0:24c:b36d:637 with SMTP id d9443c01a7336-2516ed66eb6mr141725245ad.1.1757602325286;
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3ae28408sm21345695ad.109.2025.09.11.07.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
Message-ID: <33137dc3-254e-4a7e-9531-8d682692fe29@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:51:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/13] (no cover subject)
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
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
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: -O5E3qVIXaejmqiUvTh_haPPcA2HWjsF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX0hLmJgiSOFgQ
 RgDCHxZma3jODFJBerAi+pxE8ixbjwIrdz8kQLwvKTmfSkidgIQarhHijdrJ6G/cHfCq6MBvWoE
 HlubfqtG15xABxMlOlwGFnGiCUJWpGMQZXgBbedCMeYn/y/vL8XJgp6daawKUT//69BS1Rz8GaP
 p0GlwAYf0FvNicN2Y9ktFBGkykyU5nRrIfS2/LSfeR/25UpWne+E7UzJ9pJhmjL3ll30c2OI1ab
 mZ3qyvnnw/EF+fmUvRzoCmW4w0UtZ85aajI/CxHd+dJSvjxHyfwmT6OSBQ+rowNNt3Gk75QzVFE
 BApoxCUUGGocTM3J3Y2N+xkRvoCeQcVLlR2IZMGgGcIdxBPqOWbZ+EM+x7V07JmUiG9tUo+ZjtH
 2tFFPEG9
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c2e216 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=BiXlWXQ3g7YhofqwlSUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -O5E3qVIXaejmqiUvTh_haPPcA2HWjsF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075207_303332_30A537DD 
X-CRM114-Status: GOOD (  20.09  )
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

U29ycnkgZm9yIG1pc3Mgc3ViamVjdCBhbmQgd2lsbCByZXNlbmQgbGF0ZXIuCgoKT24gOS8xMS8y
MDI1IDEwOjQ2IFBNLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiBUaGlzIHNlcmllcyBhaW1zIHRvIGV4
dGVuZCB0aGUgVVNCLUMgUEhZIHRvIHN1cHBvcnQgRFAgbW9kZSBhbmQgZW5hYmxlCj4gRGlzcGxh
eVBvcnQgb24gdGhlIFF1YWxjb21tIFFDUzYxNSBwbGF0Zm9ybS4KPgo+IFRoZSBkZXZpY2V0cmVl
IG1vZGlmaWNhdGlvbiBmb3IgRGlzcGxheVBvcnQgb24gUUNTNjE1IHdpbGwgYmUgcHJvdmlkZWQK
PiBpbiBhIGZ1dHVyZSBwYXRjaC4KPgo+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFu
Z3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjQ6Cj4KPiAtIERy
b3AgcGF0Y2ggdjNbMDEvMTQgJiAxMy8xNF0sIHdpbGwgc3V0Ym1pdCBuZXcgcGF0Y2hzZXRzIGJh
c2VkIG1zdCBkdCBiaW5kaW5nIHNlcmllcy4KPiAtIFVwZGF0ZSBtYWludGFpbmVyIG9mIHFjb20s
cWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwgdG8gbXlzZWxmLgo+IC0gQWRkIG1pc3NpbmcgYXV4
IGFuZCBwaXBlIGNsb2Nrcy4gW0RtaXRyeV0KPiAtIERyb3Agc2Vjb25kIFRDU1IgcGhhbmRsZTsg
cmVnaXN0ZXIgb2Zmc2V0cyBhcmUgZGVzY3JpYmVkIGRpcmVjdGx5LiBbRG1pdHJ5XQo+IC0gQWRk
IFVTQkMgUEhZIHNlcmllcyByZWxhdGVkIGluaXRfbG9hZF91QSBjb25maWdzLiBbRG1pdHJ5XQo+
IC0gRHJvcCB2M1swNC8xNF0gcW1wX3BoeV91c2JjX3R5cGUgZGVmaW5lIGFuZCB1c2UgZHBfc2Vy
ZGVzIG9mZnNldHMgdG8gY29uZmlybSBEUCBjYXBhYmlsaXR5IFtEbWl0cnldCj4gLSBSZW9yZ2Fu
aXplIHN1Yi1wYXRjaGVzIGFzIHN1Z2dlc3RlZC4KPiAtIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDI1MDgyMC1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNz
NjE1LXBsYXRmb3JtLXYzLTAtYTQzYmQyNWVjMzljQG9zcy5xdWFsY29tbS5jb20vCj4KPiBDaGFu
Z2VzIGluIHYzOgo+Cj4gLSBSZW5hbWVkIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBpbiB2
MiB0byBxY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgaW4gdjMgZm9yIFFDUzYxNSBVU0IzK0RQ
IFBIWS4KPiAtIFVwZGF0ZWQgcGF0Y2ggdjNbMDIvMTRdIHRvIHJldmlzZSBiaW5kaW5nIHRpdGxl
LCBkZXNjcmlwdGlvbiwgYW5kIHByb3BlcnR5IG9yZGVyLiBbS3J6eXN6dG9mXQo+IC0gVXBkYXRl
ZCBjb21taXQgbWVzc2FnZXMgaW4gcGF0Y2ggdjNbMDEvMTRdIGFuZCBbMTMvMTRdIHRvIHJlZmxl
Y3QgdGhlIERUU0kgcmVuYW1lIGFuZCBjbGFyaWZ5IGNvbXBhdGliaWxpdHkuIFtLcnp5c3p0b2Zd
Cj4gLSBBZGRlZCBVU0IzK0RQIG1vZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0Y2hlcyB2MyBbMDAz
4oCTMDEyXSwgb3JnYW5pemVkIGluIGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5XQo+IC0gRHJvcHBl
ZCBwYXRjaCB2MlswMy8xM10gdG8gbWFpbnRhaW4gZnVsbCBiYWNrd2FyZCBjb21wYXRpYmlsaXR5
IHdpdGggVVNCQy4KPiAtIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI1MDcyMi1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYyLTAt
NDJiNDAzNzE3MWY4QG9zcy5xdWFsY29tbS5jb20vCj4KPiBDaGFuZ2VzIGluIHYyOgo+Cj4gLSBB
ZGQgbmV3IGJpbmRpbmcgcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sIGZvciBRQ1M2MTUgc3Rh
bmRhbG9uZSBEUAo+IC0gU3BsaXQgRFAgUEhZIGRyaXZlciBpbnRvIHBhdGNoZXMgNC0xMSBieSBs
b2dpY2FsIGNodW5rcyBbRG1pdHJ5XQo+IC0gVXBkYXRlIERQIFBIWSBjb25maWd1cmF0aW9uIGZs
b3cgdG8gYWxpZ24gd2l0aCBRTVAgQ29tYm8gUEhZIGltcGxlbWVudGF0aW9uIFtEbWl0cnldCj4g
LSBVcGRhdGUgYWxsIGhleCB2YWx1ZXMgdG8gbG93ZXJjYXNlIFtEbWl0cnldCj4gLSBSZW1vdmUg
cmVkdW5kYW50IGNvbW1lbnRzIGluIERQIFBIWSBkcml2ZXIgW0tyenlzenRvZl0KPiAtIFJlbW92
ZSBpbnZhbGlkIFVTQkMgdHlwZSBkZWZpbmUgW0RtaXRyeV0KPiAtIE1vdmUgbGFuZV9tYXDvvIwg
bWF4X2RwX2xhbmVz77yMIG1heF9kcF9saW5rX3JhdGUgcGFyc2luZyBsb2dpYyB0byBkcF9saW5r
IFtEbWl0cnldCj4gLSBBZGQgVENTUi1iYXNlZCBtdXRleCBsb2dpYyBmb3IgRFAgYW5kIFVTQiBQ
SFkgY29leGlzdGVuY2UgW0RtaXRyeV0KPiAtIERyb3AgcGF0Y2hlcyA24oCTOCBhbmQgcmVtb3Zl
IHJlbGF0ZWQgYmluZGluZyBwcm9wZXJ0aWVzIGFzIHJlamVjdGVkIHVwc3RyZWFtCj4gLSBMaW5r
IHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDExMjktYWRkLWRpc3BsYXlw
b3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS12MS0wLTA5YTQzMzhkOTNlZkBxdWljaW5j
LmNvbS8KPgo+IC0tLQo+IFhpYW5neHUgWWluICgxMyk6Cj4gICAgICAgZHQtYmluZGluZ3M6IHBo
eTogQWRkIFFNUCBVU0IzK0RQIFBIWSBmb3IgUUNTNjE1Cj4gICAgICAgcGh5OiBxY29tOiBxbXAt
dXNiYzogUmVuYW1lIFVTQi1zcGVjaWZpYyBvcHMgdG8gcHJlcGFyZSBmb3IgRFAgc3VwcG9ydAo+
ICAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUC1yZWxhdGVkIGZpZWxkcyBmb3IgVVNC
L0RQIHN3aXRjaGFibGUgUEhZCj4gICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIFFDUzYx
NSBEUCBQSFkgY29uZmlndXJhdGlvbiBhbmQgaW5pdCBkYXRhCj4gICAgICAgcGh5OiBxY29tOiBx
bXAtdXNiYzogQWRkIHJlZ3VsYXRvciBpbml0X2xvYWQgc3VwcG9ydAo+ICAgICAgIHBoeTogcWNv
bTogcW1wLXVzYmM6IE1vdmUgcmVzZXQgY29uZmlnIGludG8gUEhZIGNmZwo+ICAgICAgIHBoeTog
cWNvbTogcW1wLXVzYmM6IEFkZCBEUCBQSFkgY29uZmlndXJhdGlvbiBzdXBwb3J0IGZvciBRQ1M2
MTUKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVVNCL0RQIHN3aXRjaGFibGUgUEhZ
IGNsayByZWdpc3Rlcgo+ICAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBUQ1NSIHBhcnNp
bmcgYW5kIFBIWSBtb2RlIHNldHRpbmcKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQg
RFAgUEhZIG9wcyBmb3IgVVNCL0RQIHN3aXRjaGFibGUgVHlwZS1DIFBIWXMKPiAgICAgICBwaHk6
IHFjb206IHFtcC11c2JjOiBBZGQgVVNCL0RQIG11dGV4IGhhbmRsaW5nCj4gICAgICAgZHJtL21z
bS9kcDogbW92ZSBsaW5rLXNwZWNpZmljIHBhcnNpbmcgZnJvbSBkcF9wYW5lbCB0byBkcF9saW5r
Cj4gICAgICAgZHJtL21zbS9kcDogQWRkIHN1cHBvcnQgZm9yIGxhbmUgbWFwcGluZyBjb25maWd1
cmF0aW9uCj4KPiAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55
YW1sICAgfCAgMTExICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5jICAgICAg
ICAgICAgICAgICAgIHwgICAxMCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsu
YyAgICAgICAgICAgICAgICAgICB8ICAgNzEgKysKPiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9k
cF9saW5rLmggICAgICAgICAgICAgICAgICAgfCAgICA1ICsKPiAgZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9wYW5lbC5jICAgICAgICAgICAgICAgICAgfCAgIDc4ICstCj4gIGRyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgICAgICAgICAgICAgICAgIHwgICAgMyAtCj4gIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHktdjIuaCAgICAgIHwgICAyMSArCj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgICAgICAgICAgIHwgMTA4
OSArKysrKysrKysrKysrKysrKy0tLQo+ICA4IGZpbGVzIGNoYW5nZWQsIDExOTIgaW5zZXJ0aW9u
cygrKSwgMTk2IGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiA4ZjIxZDlkYTQ2NzAy
YzRkNjk1MWJhNjBjYThhMDVmNDI4NzBmZThmCj4gY2hhbmdlLWlkOiAyMDI1MDkxMS1hZGQtZGlz
cGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLTJmMDcyZTJiYTIzOQo+Cj4gQmVz
dCByZWdhcmRzLAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
