Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE8DEA8108
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 12:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+zkPsgoelD/S8DXx6dA4HTYTGZN5KbW+uYMmNML2Bk=; b=IElclDou7sj2qS
	SqhHsN8F7c8JRDqyMVExYohU/8JNRwVuibLOOpK1KIcfcjKAJi5kadRLqYAYnrHHjVbUjG+LzXlnT
	8dXFxFOcTAd6DSToRU5tJV9HPyhpCdM3Tn3tV4FQIP8+IGnVMgV3iP4Tuye/IhlOoKi+jzuX0lJC5
	OmuDG/JOUc1pe87LOFEGUST9Fnw97+eDxZVkUE4ojal0zr15YLg4R8WLupXQeA9caZFcLmme3tjFK
	Tn86N6o0rVwK5bpL3c8IwcUNLfcyHx/uO7ivwggqwnOekFUk3thmxK/O2IAArvktdDB709SZmWOIN
	M4EqAR6WWJQ3W6QCuXCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmwG-0000000GwnQ-1BcF;
	Tue, 10 Feb 2026 12:33:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmwD-0000000Gwn0-2Ktx
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 12:33:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AAM3gT1940336
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 12:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cmAMllo7XwjNifb2u09poEuqz7GlThZP3FUE15w3yQ0=; b=WCQF0V8o7Hkjf5nG
	wCQf8hSZbenhgBVts7fBvgH5GH9l/YbQ3RpmKj1/rd0L7KM6Ef4TF/2RkCmeQTig
	/pHxJOiAt+7GjSVQoIVIJ6fJkp+NPMKqllH5AeDxGjr4TiFBCpmcjHoD8mjTGgMH
	RhbcYfQ75ZmND7h7RpRY7f88DYLePN4zj/K5QHMEv8ieNzcl0pKNMC1kk2Lgy1pI
	vcUJVgV1VEFmEayS0ouiHIu9o+L4wvyuDP1bcLIhgFI5phYD8A48gaHy9eP0KrzF
	AAp0N3rY+qUjzRHCaxMDHMlk/ESzVce+4NcOqd1wEmK1oWWxLdAjsQ5L2F07lXr/
	m1HJHw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7w1jsjaq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 12:33:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-896fae4073fso10038506d6.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 04:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770726826; x=1771331626; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cmAMllo7XwjNifb2u09poEuqz7GlThZP3FUE15w3yQ0=;
        b=aMd8Cb/InXLmH/REDt62i1ve7eJKLOeodPZMHCR/5MsWgEliTIybOsDRv7GaqemvoA
         +5iqF++AbKzGjwG7LKDx/3bD1kxI2NtGdg4rZlbqiOJFn74buHv2DXOLpVLKnUPPUwsl
         YpzdcVlfB/QEXPRk6jiHJL4e0JOljcWmycN5k41B9ScyVCFtTWVmwyZ3zF4uaYSvyvMX
         R1A9BuKNXYlKSv5ZpvHIvQaNVvhB6T67BvqcZNIFYUXkVz+YYZzSmHYdzi5/sLrrAQk2
         OCYVqNPeIRCF/1UwfCwJV7es+N0Kf75bBESA06GgJCEpzzHNOInFfsWTZrFUjeyC0Agd
         i+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726826; x=1771331626;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cmAMllo7XwjNifb2u09poEuqz7GlThZP3FUE15w3yQ0=;
        b=Ms7xWW9kIcPuFrssZtNVAkm8eNU1C0UxbFL+uBbQhm7rsFtMlRjVVYMgH/vkh583lN
         ChyHJG4f0wuURIGRMILS5sdrwPhyAOXFOfjDAEsCYwRTk6ypHbTFPr4DwcsVL04BaCI/
         ptfCjt1WH0EV1laZ79/jn9enuvGO4HCCeSyp8mC+8jOYU1UKt6OPRKb8wdys/zsLJnEi
         KPsN2ucyYZ0LizFgEeJ3cOSoQjBa0nPMFTrXG0f7dVCv11K3OXV/xZNNcS4lCjkAQ+Ov
         0sIlXxhC6p0TKxXAQXuZsHdkqQ2VcnPAbTpGo26VJ6BQ39fNwGuSTBDRAkuMKbPG79yw
         12sA==
X-Forwarded-Encrypted: i=1; AJvYcCUX5h/fXTIYxdDHMwNUNuAIGKhmmVQUPrPWKTRHtnXZCa/3LH9GMTnEMw/KENdDSqjkzfv5KdMCOFU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlW8gajKRG+pWHL5QxY22xEg8eEiIpBbSx8yZTo4bZ07f/bDnY
	CCf+HCahi8NA1Zt2FGE8W3/8M+tRHzFa0kRkVb1Gt/edjdVCLdbHtcRU+u7OvzA0VOqMU+7d8ZY
	nb3V8CfwGdQQRdThmqCmIm4cl50NHkITCO4SD536W6OD//rLumza1BzvaVGraXFc+iayl
X-Gm-Gg: AZuq6aJgbB1u4qfixzoXLhPqjM47lBOzTnz6fZc4ewa45tdidSmKkVx0ob62TGnrs2i
	R36F7b2WGlQNCe7iD3r966E9et543bMt3dF8mq7zpDnYKQ8ENqhGtiOglAdtm1+7GyTO0daN44/
	QVG+WfbKcYZKhXl5XZM3SpoiWQPhLVS5SMDEOAflpOVZQ9Svr1xEBm7nMvWBGEH+YxCHcbKRQTx
	54LQ4i+rnaRe4BMTOzsLmBeU6IdBMj+7Dlmx9PqHFkLonpm7snYMZK8BYXMWwhEnyZ6Tf0VWMc+
	3NhWrwAbJMyeoMYlRT8AtmjpXM5nqMJHpxRkkDQwP104R7SX8lQIl+TmpqWdXcmZ1Wwi6SKHB7U
	4d9LNfB6Gj2oe04Uw4xbDPHUwSdrFpY6xCJHqphhiEucA2Ztmt9uo3jODvBR2M0PldSLrBDfUYx
	AduPvWEhzM/sH07hW9cSLs5g0+aRS6TphLrrQ=
X-Received: by 2002:a05:620a:1998:b0:8c6:d309:f9c0 with SMTP id af79cd13be357-8caeeb5112cmr2077846285a.8.1770726825782;
        Tue, 10 Feb 2026 04:33:45 -0800 (PST)
X-Received: by 2002:a05:620a:1998:b0:8c6:d309:f9c0 with SMTP id af79cd13be357-8caeeb5112cmr2077842185a.8.1770726825292;
        Tue, 10 Feb 2026 04:33:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f46sm3239140e87.10.2026.02.10.04.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:33:44 -0800 (PST)
Date: Tue, 10 Feb 2026 14:33:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo
 PHY configuration values
Message-ID: <tqbrm5riryojhpdvu7kq5kcjftu6ndkmxr4bn3suiq5l62hacy@s34uamejwvkp>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
 <23930db0-730e-4f99-a661-262b15f1a8ac@oss.qualcomm.com>
 <w3vmcgeh5bw7lfuyv7ziiw3oxpxtjyqmojddamjo5alz4nv7ld@ytgjwdhecfua>
 <23e007dc-4145-4260-8810-1e98e533b1b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23e007dc-4145-4260-8810-1e98e533b1b5@oss.qualcomm.com>
X-Proofpoint-GUID: JvNE0jpK_pl79R1z1BW3n7TmvDYUkSj4
X-Proofpoint-ORIG-GUID: JvNE0jpK_pl79R1z1BW3n7TmvDYUkSj4
X-Authority-Analysis: v=2.4 cv=YrIChoYX c=1 sm=1 tr=0 ts=698b25b0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=2j0BlZbzurhpY0H5GaQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwNSBTYWx0ZWRfX901Jb1nEqlq+
 d187dALLiirT+zQzxSCNAAmcylvPm388xB2zVXSXj/stB5S/9PWYV/I+Rn/vJwQUjEx7moVGGI0
 DpY7IWlRz5W6Rcf5qBPMcTesqwCxXD8981YicR2WqDZ2fc4hAfoYDIwiFLix9yBUiWy/WHiEq2T
 Z7yQVhh5os2iJu6eilBVvJjBcSaaw6RRdviKguINEv9EqjlrAZyKuV4pjFrfwNDN/Xt8ac03A1h
 jpb9xMxOEZ/BTfP3vkZI3usVTm3EXrDAlTzex5YibrjxPe5h0kKYpZhmneGxOysGXt3bnV5vhkb
 RY2Bk1X2RzvDjplPcBxjxUCO02Otf7o/jMRHuQnk1OyOcDY6NAsZ8ePd931BX4YP0QzKSEvvYFS
 fVf0oXvpH/UHP8ww29akiodPdKDiOBUHTVMUgzhgKL1okxG+RxXVp1vHL+bHc947DYERgxVQtZr
 gjNJ1kduL5y13yB5GuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_043353_605574_4D793E03 
X-CRM114-Status: GOOD (  31.11  )
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

T24gVHVlLCBGZWIgMTAsIDIwMjYgYXQgMDY6MTc6MDdQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDIvOS8yMDI2IDg6NDcgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gPiBPbiBNb24sIEZlYiAwOSwgMjAyNiBhdCAwNTo1MjoyMlBNICswODAwLCBZb25neGluZyBN
b3Ugd3JvdGU6Cj4gPiA+IAo+ID4gPiAKPiA+ID4gT24gMi83LzIwMjYgNjoyMiBQTSwgRG1pdHJ5
IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAwNToyMDo1
M1BNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gPiA+ID4gPiBBY2NvcmRpbmcgdG8gdGhl
IGN1cnJlbnQgSFBHIHNldHRpbmdzLCBtb3N0IGVEUC9EUCBjb21ibyBQSFlzIGNhbiByZXVzZSB0
aGUKPiA+ID4gPiA+IHNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCj4gPiA+ID4gPiBEUCBtb2Rl
77yaCj4gPiA+ID4gPiAJLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4gPiA+ID4g
PiAJLWdseW11cgo+ID4gPiA+ID4gZURQIG1vZGUobG93IHZkaWZmKToKPiA+ID4gPiA+IAktZ2x5
bXVyL3NhODc3NXAvc2M4MjgweHAveDFlODAxMDAKPiA+ID4gPiA+IAktc2M3MjgwCj4gPiA+ID4g
PiBUaGUgY3VycmVudCBkcml2ZXIgc3RpbGwga2VlcHMgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhl
c2UgdGFibGVzIGFuZAo+ID4gPiA+ID4gZG9lc24ndCBmdWxseSBzdXBwb3J0IGV2ZXJ5IGNvbWJv
IFBIWSBtb2RlLiBUaGlzIHBhdGNoIHJlbW92ZXMgdGhlCj4gPiA+ID4gCj4gPiA+ID4gU2VlIERv
Y3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0LCAiVGhpcyBwYXRjaCIu
Cj4gPiA+ID4gCj4gPiA+IFN1cmUuIGdvdCBpdCB0aGFua3MsIHdpbGwgcmVtb3ZlICJUaGlzIHBh
dGNoIi4KPiA+ID4gPiA+IHJlZHVuZGFudCBjb25maWdzIGFuZCBrZWVwcyBvbmx5IHRoZSBzZXRz
IHdlIGFjdHVhbGx5IHVzZSwgbWF0Y2hpbmcgdGhlCj4gPiA+ID4gPiBwbGF0Zm9ybXMgbGlzdGVk
IGFib3ZlLgo+ID4gPiA+IAo+ID4gPiA+IFNob3VsZCBpdCBiZSBjb21iaW5lZCB3aXRoIHRoZSAz
cmQgcGF0Y2g/IFRoZXJlIHlvdSBzb3J0IG91dCBhbGwgdGhlCj4gPiA+ID4gdGFibGVzLCBpdCBt
YWtlcyBtb3JlIHNlbnNlIHRvIHJldmlldyBhbGwgcHJvZ3JhbW1pbmcgdG9nZXRoZXIuCj4gPiA+
ID4gCj4gPiA+IEhpLCBpZiB0aGlzIHdvdWxkIGhlbHAgd2l0aCB5b3VyIHJldmlldyB3b3JrLCBJ
4oCZbSB2ZXJ5IGhhcHB5IHRvIGRvIGl0Lgo+ID4gPiBNeSBvcmlnaW5hbCBpbnRlbnRpb24gd2Fz
IHRvIGRvIHNvbWUgY2xlYW51cCBpbiB0aGlzIHBhdGNo4oCUY29ycmVjdCB0aGUgdGFibGUKPiA+
ID4gdmFsdWVzIHNvIHRoYXQgbW9yZSBwbGF0Zm9ybXMgY2FuIHJldXNlIHRoZSBzYW1lIHRhYmxl
Lgo+ID4gCj4gPiBGaXhlZCBzaG91bGQgY29tZSBiZWZvcmUgY2xlYW51cHMgKHNvIHRoYXQgdGhl
eSBjYW4gYmUgYmFja3BvcnRlZCB0bwo+ID4gc3RhYmxlIGtlcm5lbHMpLgo+ID4gCj4gSGksIGRv
IHlvdSBtZWFuIHRoZSBzZWNvbmQgTERPIHBhdGNoIHNob3VsZCBjb21lIGJlZm9yZSB0aGUgZmly
c3QgcGF0Y2jvvJ9JbgoKTW9yZSBsaWtlIDNyZCBwYXRjaCBzaG91bGQgYmUgY29tYmluZWQgd2l0
aCB0aGUgZmlyc3QgYW5kIGNvbWUgYmVmb3JlIC8Kd2l0aCBMRE8gZml4ZXMuCgo+IGZhY3QsIG1h
eWJlIHRocmVlIHBhdGNoZXMgc2hvdWxkIGdvIGludG8gdGhlIHN0YWJsZSBicmFuY2guIFRoZSBM
RE8gcGF0Y2gKPiBjYW5ub3QgYmUgdXNlZCBvbiBpdHMgb3duLiBPbiBib3RoIHNhODc3NXAgYW5k
IGhhbW9hLCB0aGVpciBlRFAvRFAgbW9kZXMgZG8KPiBub3QgbWF0Y2ggdGhlIHRhYmxlcyB0aGV5
IGFyZSBjdXJyZW50bHkgdXNpbmcgKGhhbW9hIHNob3VsZCB1c2UgdGhlIGVEUAo+IHRhYmxlLCB3
aGlsZSBzYTg3NzVwIHNob3VsZCB1c2UgdGhlIERQIHRhYmxlKS4gSWYgb25seSB0aGUgTERPIHBh
dGNoIGlzCj4gYXBwbGllZCwgaXQgbWF5IGNhdXNlIGxpbmsgdHJhaW5pbmcgdG8gZmFpbC4KPiA+
ID4gIEZyb20gS29uYXJk4oCZcyBjb21tZW50cywgaXQgc2VlbXMgdGhhdCB0aGUgSFBHIHRhYmxl
IG1heSBub3QgYmUgdGhlIG1vc3QKPiA+ID4gYXBwcm9wcmlhdGUgb25lIGVpdGhlci4KPiA+ID4g
TWF5YmUgc2hvdWQgZmlyc3QgZGV0ZXJtaW5lIHdoYXQgdGhlIGNvcnJlY3QgdGFibGUgdmFsdWVz
IHNob3VsZCBiZS4KPiA+IAo+ID4gUGxlYXNlIGZvbGxvdyB0aGUgdGFibGVzIGZvciBlYWNoIFNL
VSBzZXBhcmF0ZWx5ICh0aGF0J3MgdGhlICdmaXgnCj4gPiBwYXJ0KS4KPiA+IAo+IFN1cmUuCj4g
CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
